#' Find triangle
#'
#' An R function, triangle, takes and K*2 matrix edges (representing and undirected graph's edges) and checks if the graph contains any triangles (cycles of length 3).
#'
#'
#' @param edges A matrix vector.
#' @return An bool value that whether the input matrix has an triangle with length 3.
#' @examples
#' triangle ( matrix ( c (1 , 2 , 2 , 3) , 2 , 2))
#' @export
#' @useDynLib newHyu625Hw3
#' @importFrom Rcpp sourceCpp
#' @export triangle_cpp
triangle <- function(edges) {

  if (is.matrix(edges) && ncol(edges) == 2) {
    edges <- apply(edges, 2, as.character)
    final_nei <- list()
    for (i in 1:nrow(edges)) {
      node1 <- edges[i, 1]
      node2 <- edges[i, 2]

      final_nei[[node1]] <- append(final_nei[[node1]], node2)
      final_nei[[node2]] <- append(final_nei[[node2]], node1)

    }
    for (i in names(final_nei)) {
      nei_i <- final_nei[[i]]
      if (length(nei_i) >= 2) {
        for (j in 1:(length(nei_i) - 1)) {
          for (k in (j + 1):length(nei_i)) {
            if (any(nei_i[k] == final_nei[[nei_i[j]]])) {
              return(TRUE)
            }
          }
        }
      }
    }

    return(FALSE)

  } else {
    stop("error: The input is not a k*2 matrix")
  }
}
