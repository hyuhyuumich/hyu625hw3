#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
double kendall_cpp(NumericVector x, NumericVector y) {
  int concordant = 0, discordant = 0, n = x.size();
  for (int i = 0; i < n - 1; i++) {
    for (int j = i + 1; j < n; j++) {
      double xi = x[i], xj = x[j], yi = y[i], yj = y[j];
      if ((xi - xj) * (yi - yj) > 0) concordant++;
      if ((xi - xj) * (yi - yj) < 0) discordant++;
    }
  }
  return (concordant - discordant) / double(n * (n - 1) / 2);
}

// [[Rcpp::export]]
double matrix_kendall_cpp(NumericMatrix X) {
  int rows = X.nrow();
  int cols = X.ncol();

  // Create the y vector: {1, 2, ..., n}
  NumericVector y(cols);
  for (int i = 0; i < cols; i++) {
    y[i] = i + 1;
  }

  NumericVector tau_values(rows);

  for (int i = 0; i < rows; i++) {
    tau_values[i] = kendall_cpp(X(i, _), y);
  }

  return max(tau_values);
}
