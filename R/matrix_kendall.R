#' Matrix kendall
#'
#' Given a set of observations x=(x1,x2,...,xn) and y=(y1,y2,...,yn), Kendall's τ, a non-parametric rank correlation coefficient, is defined as:τ = ((number of concordant pairs) - (number of disconcordant pairs))/((n(-1))/2)
#'For 1≤i<j≤n, a pair of observations (xi, yi) and (xj, yj) is:
#'Concordant if both xi>xj, yi>yj, or if both xi<xj and yi<yj.
#'Discordant if xi>xj and yi<yj or ifxi<xj and yi>yj.
#'The function should calculate Kendall's τ between each row of X and y=(1,2,...,n), then return the maximun τ value achieved across all rows of X.
#'
#' @param X A matrix vector.
#' @param x A numeric vector.
#' @param y A numeric vector.
#' @return An integer that the maximum τ across all rows.
#' @examples
#' matrix_kendall ( matrix ( c (1 , 2 , 2 , 1) , 2 , 2))
#' @export
#' @useDynLib newHyu625Hw3
#' @importFrom Rcpp sourceCpp
#' @export matrix_kendall_cpp
matrix_kendall <- function(X) {
  n <- ncol(X)
  y <- 1:n

  tau_values <- apply(X, 1, function(x) cor(x, y, method = "kendall"))
  return(max(tau_values))
}
