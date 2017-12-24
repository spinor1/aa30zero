![pic1](http://spinorlab.matrix.jp/en/wp-content/uploads/2017/12/DSC_8266.jpg)
![pic2](http://spinorlab.matrix.jp/en/wp-content/uploads/2017/12/Screen-Shot-2017-12-23-at-9.20.24.png)

/* RigExpert AA-30.ZERO */

% gcc aa30zero.c -o aa30zero  
% g++ bb30.c -o bb30  
% ./aa30zero /dev/cu.usbmodem1461 fq7050000 sw100000 frx2 | awk -F, -f bb30.awk | ./bb30  
% gnuplot bb30.plt  

