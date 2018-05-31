#' Find the smallest of the values in the given data set.
#'
#' @param input.array input array of numbers
#' @return the smallest of the values in the input array
#' @export
#' @examples
#' arr <- c(2, 1, 3, 0)
#' Soen6611Min(arr)
#'
#' Soen6611Min(c(2, 1, 3, 0))
Soen6611Min <- function(input.array) {
  if (!Soen6611IsCorrectArray(input.array)){
    stop('Array must contain only numbers.')
  }
  min.value <- input.array[1]
  for (i in 1:length(input.array)){
    if(input.array[i] < min.value){
      min.value <- input.array[i]
    }
  }
  return(min.value)
}
