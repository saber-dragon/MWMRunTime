//
// Created by gtuser on 11/20/18.
//
#include <iostream>
#include <armadillo>
#include "mwm.hh"
#include <chrono>
#include <fmt/format.h>
#include <random>
#include "SERENADE.h"

using namespace std;
using namespace arma;
using namespace lemonwrap;



void serena_measure(){
    auto MAX_N = 4096;
    auto MAX_W = 100;
    auto MIN_W = 0;

    imat W = randi<imat>(MAX_N, MAX_N, distr_param(MIN_W, MAX_W));
    arma_rng::set_seed_random();  // set the seed to a random value


    // obtain a time-based seed:
    unsigned seed = std::chrono::system_clock::now().time_since_epoch().count();

    cout << endl;
    cout << "N,ExecutionTime(us)\n";
    for ( int n = 4;n <= MAX_N;n *= 2 ) {
        std::vector<int> Sg(n, -1);
        std::vector<int> Sr(n, -1);
        for ( int i = 0;i < n;++ i ) {
            Sg[i] = i;
            Sr[i] = i;
        }
        shuffle(Sg.begin(), Sg.end(), std::default_random_engine(seed));
        shuffle(Sr.begin(), Sr.end(), std::default_random_engine(seed));

        SERENA serena_obj{std::move(Sr), std::move(Sg)};

        auto T = MAX_N / n;
        auto start = std::chrono::steady_clock::now();
        for ( int t = 0;t < T;++ t ) serena_obj.run(W);
        auto duration = chrono::duration_cast<chrono::milliseconds>
                (chrono::steady_clock::now() - start);
        cout << n << "," << fmt::format("{0:.2f}", (double) duration.count() / T * (1e3)) << "\n";
    }
}

void mwm_measure(){
    auto MAX_N = 4096;
    auto MAX_W = 100;
    auto MIN_W = 0;

    imat W = randi<imat>(MAX_N, MAX_N, distr_param(MIN_W, MAX_W));
    arma_rng::set_seed_random();  // set the seed to a random value

    //cout << W << endl;
    cout << endl;
    cout << "N,ExecutionTime(us)\n";
    for ( int n = 4;n <= MAX_N;n *= 2 ) {
        MWM mwm_obj(n, n);

        for ( int i = 0;i < n;++ i ){
            for ( int j = 0;j < n;++ j ) {
                mwm_obj.set(i, j, W(i, j));
            }
        }

        auto T = MAX_N / n;
        auto start = std::chrono::steady_clock::now();
        for ( int t = 0;t < T;++ t ) mwm_obj.run();
        auto duration = chrono::duration_cast<chrono::milliseconds>
                (chrono::steady_clock::now() - start);
        cout << n << "," << fmt::format("{0:.2f}", (double) duration.count() / T * (1e3)) << "\n";
    }
}

int main(){

    serena_measure();
    cout << endl;
    cout << endl;
    mwm_measure();
    cout << endl;
    cout << endl;
    return 0;
}

