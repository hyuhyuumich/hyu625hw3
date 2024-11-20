#include <Rcpp.h>
using namespace Rcpp;

// Helper function: log-sum-exp trick for numerical stability
double log_sum_exp(double max_beta, NumericVector semi) {
  double sum_exp = 0.0;
  for (double s : semi) {
    sum_exp += std::exp(s - max_beta);
  }
  return std::log(sum_exp) + max_beta;
}

// [[Rcpp::export]]
NumericVector gen_logit_cpp(NumericMatrix matrix_1, NumericVector x) {
  int K = matrix_1.nrow();
  NumericVector semi(K);
  NumericVector max_e(K);
  NumericVector ans(K);

  // Compute max_e and semi
  for (int i = 0; i < K; i++) {
    double dot_product = 0.0;
    for (int j = 0; j < x.size(); j++) {
      dot_product += matrix_1(i, j) * x[j];
    }
    max_e[i] = dot_product;
    semi[i] = std::exp(dot_product);
    Rcpp::Rcout << "C++ Row " << i + 1 << ": max_e=" << max_e[i] << ", semi=" << semi[i] << "\n";
  }

  // Compute max_beta and log_sum_exp
  double max_beta = max(max_e);
  double log_sum = log_sum_exp(max_beta, semi);
  Rcpp::Rcout << "C++ max_beta=" << max_beta << ", log_sum=" << log_sum << "\n";

  // Compute p_y0
  double p_y0 = 1 / (1 + sum(semi) / std::exp(max_beta));

  // Compute probabilities for other levels
  for (int j = 0; j < K; j++) {
    ans[j] = std::exp(max_e[j] - log_sum);
  }

  // Combine p_y0 and probabilities
  NumericVector final_ans(K + 1);
  final_ans[0] = p_y0;
  for (int j = 0; j < K; j++) {
    final_ans[j + 1] = ans[j];
  }

  Rcpp::Rcout << "C++ final_ans: " << final_ans << "\n";
  return final_ans;
}
