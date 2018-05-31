#' Find the largest of the values in the given data set.
#'
#' @param input.array input array of numbers
#' @return the largest of the values in the input array
#' @export
#' @examples
#' arr <- c(2, 1, 3, 0)
#' Soen6611Max(arr)
#'
#' Soen6611Max(c(2, 1, 3, 0))
Soen6611Max <- function(input.array) {
  if (!Soen6611IsCorrectArray(input.array)){
    stop('Array must contain only numbers.')
  }
  max.value <- input.array[1]
  for (i in 1:length(input.array)){
    if(input.array[i] > max.value){
      max.value <- input.array[i]
    }
  }
  return(max.value)
}
