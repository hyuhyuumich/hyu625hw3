#' Num Str
#'
#' Defines S as an infinite string string formed by concatenating all the natural numbers in increasing order, i.e. S = "123456....99100101..."
#' This function that takes a digit sequence s and returns its first position in S.
#' @param input_num A series number in string type.
#' @return An integer of the first position that the input value appears in the sequence S.
#' @examples
#' num_str ("12")
#' @export
num_str <- function(input_num) {

  s <- paste0(1:input_num, collapse = "")
  position <- regexpr(input_num, s)

  if (position[1] != -1) {
    return(position[1])
  } else {
    return("Cannot find")
  }
}
