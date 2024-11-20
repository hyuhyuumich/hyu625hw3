#include <Rcpp.h>
using namespace Rcpp;

// [[Rcpp::export]]
bool triangle_cpp(IntegerMatrix edges) {
  int rows = edges.nrow();
  std::map<int, std::vector<int>> adj;

  for (int i = 0; i < rows; i++) {
    adj[edges(i, 0)].push_back(edges(i, 1));
    adj[edges(i, 1)].push_back(edges(i, 0));
  }

  for (auto &p : adj) {
    std::vector<int> neighbors = p.second;
    int size = neighbors.size();

    for (int i = 0; i < size - 1; i++) {
      for (int j = i + 1; j < size; j++) {
        if (std::find(adj[neighbors[i]].begin(), adj[neighbors[i]].end(), neighbors[j]) != adj[neighbors[i]].end()) {
          return true;
        }
      }
    }
  }

  return false;
}
