#' Validate an array to contain only numeric.
#'
#' @param input_array input array of numbers
#' @return None
#' @export
#' @keywords internal
#' @examples
#' arr <- c(2, 1, 3, 0)
#' soen6611.isCorrectArray(arr)
#'
#' soen6611.isCorrectArray(c(2, 1, 3, 0))
soen6611.isCorrectArray <- function(input_array) {
  for (i in 1:length(input_array)){
    if( ! is.numeric(input_array[i]) ){
      stop('Array must contain only numbers.')
    }
  }
}
