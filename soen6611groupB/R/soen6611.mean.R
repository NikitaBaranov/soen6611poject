#' Find the mean value in the given data set.
#'
#' @param input_array input array of numbers
#' @return the mean value of the input array
#' @export
#' @examples
#' arr <- c(2, 1, 2, 3, 0)
#' soen6611.mean(arr)
#'
#' soen6611.mean(c(2, 1, 2, 3, 0))
soen6611.mean <- function(input_array) {
  if (! soen6611.isCorrectArray(input_array)){
    stop('Array must contain only numbers.')
  }
  arraySize <- length(input_array)
  arraySum <- 0
  # use "for loop" to obtain sum
  for(i in 1:arraySize) {
    arraySum <- arraySum + input_array[i]
  }
  meanResult <- arraySum / arraySize
  return(meanResult)
}
