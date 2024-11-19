#' Quadratic
#'
#' An R function that takes three numbers a, b, and c , as arguments and returns the smallest solution of the equation ax^2 + bx + c = 0, guaranteed to have at least one solution.
#'
#' @param a A numeric vector.
#' @param b A numeric vector.
#' @param c A numeric vector.
#' @return An integer of valid solution for the equation ax^2 + bx +c = 0.
#' @examples
#' quadratic (1 , 4 , 1)
#' @export
quadratic <- function(a, b, c) {
  if (is.numeric(a) && is.numeric(b) && is.numeric(c)) {
    if (a != 0) {
      delta <- (b^2) - 4*a*c
      if (delta > 0) {
        x_1 <- (-b + sqrt(delta)) / (2*a)
        x_2 <- (-b - sqrt(delta)) / (2*a)
        return(min(x_1, x_2))
      } else if (delta == 0) {
        return(-b / (2*a))
      }
    } else if (c == 0) {
      c_1 <- 0
      c_2 <- -b/a
      return(min(c_1, c_2))
    } else {
      return(-b / c)
    }
  } else {
    stop("error: input should be numeric type")
  }
}

