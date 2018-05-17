#' Find the median value in the given data set.
#'
#' @param input_array input array of numbers
#' @return the median value in the input array
#' @export
#' @examples
#' arr <- c(2, 1, 2, 3, 0)
#' soen6611.median(arr)
#'
#' soen6611.median(c(2, 1, 2, 3, 0))

soen6611.median <- function(input_array) {
  arraySize <- length(input_array)
  # efficiency is depandent on this line of code below
  sortedArray <- sort(input_array)
  middleNum1 <-1
  middleNum2 <-2
  medianValues <-0
  if(arraySize%%2){
    middleNum1 <- (arraySize+1)/2
    medianValues <- sortedArray[middleNum1]
  }else{
    middleNum1 <- arraySize/2
    middleNum2 <- middleNum1+1
    medianValues <- (sortedArray[middleNum1]+sortedArray[middleNum2])/2
  }
  return(medianValues)
}
