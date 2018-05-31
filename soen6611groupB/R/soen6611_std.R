#' Find the standard deviation value in the given data set.
#'
#' @param input.array input array of numbers
#' @return the standard deviation in the input array
#' @export
#' @examples
#' arr <- c(2, 1, 2, 3, 0)
#' Soen6611Std(arr)
#'
#' Soen6611Std(c(2, 1, 2, 3, 0))
Soen6611Std <- function(input.array) {
  if (!Soen6611IsCorrectArray(input.array)){
    stop('Array must contain only numbers.')
  }
  mean.value <- Soen6611Mean(input.array)
  array.size <- length(input.array)
  square.sum <- 0
  # use "for loop" to obtain square sum
  for(i in 1:array.size) {
    square.sum <- square.sum + (input.array[i] - mean.value) * (input.array[i] - mean.value)
  }
  sigma.value <- Soen6611Sqrt(square.sum / array.size)
  return(sigma.value)
}
