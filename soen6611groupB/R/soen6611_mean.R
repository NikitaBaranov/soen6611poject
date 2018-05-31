#' Find the mean value in the given data set.
#'
#' @param input.array input array of numbers
#' @return the mean value of the input array
#' @export
#' @examples
#' arr <- c(2, 1, 2, 3, 0)
#' Soen6611Mean(arr)
#'
#' Soen6611Mean(c(2, 1, 2, 3, 0))
Soen6611Mean <- function(input.array) {
  if (!Soen6611IsCorrectArray(input.array)){
    stop('Array must contain only numbers.')
  }
  array.size <- length(input.array)
  array.sum <- 0
  # use "for loop" to obtain sum
  for(i in 1:array.size) {
    array.sum <- array.sum + input.array[i]
  }
  mean.result <- array.sum / array.size
  return(mean.result)
}
