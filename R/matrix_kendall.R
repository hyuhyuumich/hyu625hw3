#' Matrix kendall
#'
#' This function computes Kendall's tao between each row of an m*n matrix X and y(1, ... ,n), returning the maxmium tao across all rows.
#'
#' @param X A matrix vector.
#' @param x A numeric vector.
#' @param y A numeric vector.
#' @return An integer that the maximum across all rows.
#' @examples
#' matrix_kendall ( matrix ( c (1 , 2 , 2 , 1) , 2 , 2))
#' @export
matrix_kendall <- function(X) {
  n <- ncol(X)
  y <- 1:n

  tau_values <- apply(X, 1, function(x) cor(x, y, method = "kendall"))
  return(max(tau_values))
}
