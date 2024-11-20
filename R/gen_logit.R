#' Gen logit
#'
#' Calculates the probabilities for each level of Y in a generalized logit model. In a generalized logit model (multinomial logistic regression), the outcome Y is a categorical variable with K+1 levels: 0,1,...,K, where 0 is the reference level. The model relates Y to covariates X as: ln(Pr(Y+K)/Pr(Y=0)) = (β_k)^T * X. It returns all probabilities on all levels of Y.
#'
#' @param x A numeric vector.
#' @param matrix_1 A matrix vector.
#' @return An probabilities for all levels of Y.
#' @examples
#' gen_logit ( matrix (0 , 2 , 2) , c (1 , 0))
#' @export
#' @useDynLib newHyu625Hw3
#' @importFrom Rcpp sourceCpp
#' @export gen_logit_cpp
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
