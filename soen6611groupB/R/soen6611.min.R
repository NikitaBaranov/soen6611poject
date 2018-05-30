#' Find the smallest of the values in the given data set.
#'
#' @param input_array input array of numbers
#' @return the smallest of the values in the input array
#' @export
#' @examples
#' arr <- c(2, 1, 3, 0)
#' soen6611.min(arr)
#'
#' soen6611.min(c(2, 1, 3, 0))
soen6611.min <- function(input_array) {
  if (! soen6611.isCorrectArray(input_array)){
    stop('Array must contain only numbers.')
  }
  min_value <- input_array[1]
  for (i in 1:length(input_array)){
    if(input_array[i] < min_value){
      min_value <- input_array[i]
    }
  }
  return(min_value)
}
