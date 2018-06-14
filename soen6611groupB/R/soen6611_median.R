#' Find the median value in the given data set.
#'
#' @param input.array input array of numbers
#' @return the median value in the input array
#' @export
#' @examples
#' arr <- c(2, 1, 2, 3, 0)
#' Soen6611Median(arr)
#'
#' Soen6611Median(c(2, 1, 2, 3, 0))

Soen6611Median <- function(input.array) {
  if (!Soen6611IsCorrectArray(input.array)){
    stop('Array must contain only numbers.')
  }
  array.size <- length(input.array)
  sorted.array <- Soen6611MergeSort(input.array)
  middle.num.1 <- 1
  middle.num.2 <- 2
  median.values <- 0
  if(array.size %% 2){
    middle.num.1 <- (array.size + 1) / 2
    median.values <- sorted.array[middle.num.1]
  }else{
    middle.num.1 <- array.size / 2
    middle.num.2 <- middle.num.1 + 1
    median.values <- (sorted.array[middle.num.1] + sorted.array[middle.num.2]) / 2
  }
  return(median.values)
}
