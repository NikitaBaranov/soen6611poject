#' Find the largest of the values in the given data set.
#'
#' @param input_array input array of numbers
#' @return the largest of the values in the input array
#' @export
#' @examples
#' arr <- c(2, 1, 3, 0)
#' soen6611.max(arr)
#'
#' soen6611.max(c(2, 1, 3, 0))
soen6611.max <- function(input_array) {
  if (! soen6611.isCorrectArray(input_array)){
    stop('Array must contain only numbers.')
  }
  max_value <- input_array[1]
  for (i in 1:length(input_array)){
    if(input_array[i] > max_value){
      max_value <- input_array[i]
    }
  }
  return(max_value)
}
