#' Count Pairs
#'
#' An function that takes two integers, n and m, and returns the count of integer pairs (x,y) in {1,2,...,n} such that xy mod (x+y) = m.
#'
#' @param n A numeric vector.
#' @param m A numeric vector.
#' @return An integer count of pairs that satisfy the condition.
#' @examples
#' count_pairs(1,1)
#' @export
#' @useDynLib newHyu625Hw3
#' @importFrom Rcpp sourceCpp
#' @export count_pairs_cpp
count_pairs <- function(n,m) {
  if (is.numeric(n) && is.numeric(m) && floor(n) ==n && floor(m) == m){
    number <- 0
    for (x in 1:n) {
      for (y in 1:n) {
        sum_xy <- x + y
        if ((x*y) %% sum_xy == m) {
          number <- number +1
        }
      }
    }
  }
  return (number)
}

