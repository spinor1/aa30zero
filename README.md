/* RigExpert AA-30.ZERO */

% gcc aa30zero.c -o aa30zero
% g++ bb30.c -o bb30
% ./aa30zero /dev/cu.usbmodem1461 fq7050000 sw100000 frx2 | awk -F, -f bb30.awk | ./bb30
% gnuplot bb30.plt

