//
// Created by saber on 11/20/18.
//

#ifndef MWMRUNTIME_SERENADE_H
#define MWMRUNTIME_SERENADE_H

#include <vector>
#include <bitset>
#include <armadillo>

using namespace arma;

class SERENA {
    std::vector<int> _sr;
    std::vector<int> _sg;
    std::vector<int> _sg_inverse;


public:
    SERENA(std::vector<int>&& Sr, std::vector<int>&& Sg) : _sr(std::move(Sr)), _sg(std::move(Sg)), _sg_inverse(_sg.size(), -1) {
        for ( int i = 0;i < _sg.size();++ i ) _sg_inverse[_sg[i]] = i;
    }
    std::vector<int> run(const imat& wm) const {
        std::vector<int> Sr(_sr);
        std::vector<int> Sg_inverse(_sg_inverse);

        std::vector<int> final_matching(Sr);
        std::fill(final_matching.begin(), final_matching.end(), -1);
        std::vector<int> decision;

        std::bitset<4096> visited;
        auto n = Sr.size();
        int i, j, c = 0;
        int wr , wg;
        while ( visited.count() < n ) {
            for ( i = 0;i < n && visited.test(i) ;++ i ) ;
            wr = 0;
            wg = 0;

            while ( !visited.test(i) ) {
                visited.set(i);
                final_matching[i] = c;
                j = Sr[i];
                wr += wm(i, j);
                i = Sg_inverse[j];
                wg += wm(i, j);
            }

            decision.push_back((wg > wr?0:1));
            ++ c;
        }

        for ( i = 0;i < n;++ i ) final_matching[i] = (decision[final_matching[i]] == 0 ? _sg[i] : _sr[i]);

        return final_matching;
    }
};
#endif //MWMRUNTIME_SERENADE_H
