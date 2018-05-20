#' Find the standard deviation value in the given data set.
#'
#' @param input_array input array of numbers
#' @return the standard deviation in the input array
#' @export
#' @examples
#' arr <- c(2, 1, 2, 3, 0)
#' soen6611.std(arr)
#'
#' soen6611.std(c(2, 1, 2, 3, 0))
soen6611.std <- function(input_array) {
  meanValue <- soen6611.mean(input_array)
  arraySize <- length(input_array)
  squareSum <- 0
  # use "for loop" to obtain square sum
  for(i in 1:arraySize) {
    squareSum <- squareSum + (input_array[i]-meanValue)*(input_array[i]-meanValue)
  }
  sigmaValue <- soen6611.sqrt(squareSum/arraySize)
  return(sigmaValue)
}
