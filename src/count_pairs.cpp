#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
int count_pairs_cpp(int n, int m) {
  int count = 0;
  for (int x = 1; x <= n; x++) {
    for (int y = 1; y <= n; y++) {
      if ((x * y) % (x + y) == m) {
        count++;
      }
    }
  }
  return count;
}
