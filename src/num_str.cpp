#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
int num_str_cpp(std::string input_num) {
  std::string S = "";
  int i = 1;

  while (true) {
    S += std::to_string(i);
    size_t pos = S.find(input_num);
    if (pos != std::string::npos) {
      return pos + 1;
    }
    i++;
  }
}
