#' Gen logit
#'
#' An R function that takes a K*p matrix beta and a length_p vector x, and returns the probalilities for all levels of Y.
#'
#' @param x A numeric vector.
#' @param matrix_1 A matrix vector.
#' @return An probabilities for all levels of Y.
#' @examples
#' gen_logit ( matrix (0 , 2 , 2) , c (1 , 0))
#' @export
gen_logit <- function(matrix_1, x) {
  K <- nrow(matrix_1)
  semi <- c(NA)
  ans <- c(NA)
  max_e <- c(NA)
  for (i in (1:K)){
    max_e[i] <- t(matrix_1[i,]) %*% x
    semi[i] <- exp((matrix_1[i,]) %*% x)
  }
  max_beta <- max(max_e)
  p_y0 <- (1/(exp(max_beta)))/(1/(exp(max_beta)) + sum(semi)/exp(max_beta))
  for (j in (1:K)){
    p_yk <- (exp(max_e[j]-max_beta)) / ((1 / exp(max_beta)) + (sum(semi)/exp(max_beta)))
    ans[j] <- p_yk
  }
  final_ans <- c(p_y0, ans)

  return(final_ans)
}
