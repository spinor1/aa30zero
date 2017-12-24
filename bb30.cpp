/* Data Converter for Rig Expert AA-30.ZERO */
/* % g++ bb30.cpp -o bb30 */

#include <complex>
#include <iostream>
using namespace std;

int main(int argc, char *argv[]) {
  double freq, r, x;
  double absz, retloss, vswr;
  complex<double> z, rho;
  const complex<double> z0 = 50.0;

  while (cin >> freq >> r >> x) {

    if(r<0) r=0.01;

    z       = complex<double>(r,x);
    absz    = abs(z);
    rho     = (z-z0)/(z+z0);
    retloss = -20.0 * log( abs(rho) ) / log( 10.0 );
    vswr    = ( 1+abs(rho) ) / ( 1-abs(rho) );

    cout << freq     << " " << r        << " " << x << " " << absz << " "
         << retloss  << " " << vswr     << " "
         << arg(rho) << " " << abs(rho) << endl;
  }
}
