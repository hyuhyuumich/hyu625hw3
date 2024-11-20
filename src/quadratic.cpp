#include <Rcpp.h>
#include <cmath>
using namespace Rcpp;

// [[Rcpp::export]]
double quadratic_cpp(double a, double b, double c) {
  if (a == 0) {
    if (c == 0) return 0;
    return -b / c;
  }

  double delta = b * b - 4 * a * c;
  if (delta >= 0) {
    double x1 = (-b + std::sqrt(delta)) / (2 * a);
    double x2 = (-b - std::sqrt(delta)) / (2 * a);
    return std::min(x1, x2);
  }

  stop("No real solutions");
  return NA_REAL;
}
