#' Find the value that appears most frequently in the given data set.
#'
#' @param input.array input array of numbers
#' @return the value that appears most frequently in the given data set.
#'         If there is more than one equal mode the smalles will be returned.
#' @export
#' @examples
#' arr <- c(2, 1, 3, 0)
#' Soen6611Mode(arr)
#'
#' Soen6611Mode(c(2, 1, 3, 0))
Soen6611Mode <- function(input.array) {
  if (!Soen6611IsCorrectArray(input.array)){
    stop('Array must contain only numbers.')
  }
  counting.dictionary <- list()
  # populate dictionary while count enities
  for (i in 1:length(input.array)){
    if (input.array[i] %in% names(counting.dictionary)){
      counting.dictionary[toString(input.array[i])] <- counting.dictionary[[toString(input.array[i])]] + 1
    } else{
      counting.dictionary[toString(input.array[i])] <- 1
    }
  }

  # find max element
  max.value.index <- names(counting.dictionary)[1]
  max.value.array <- names(counting.dictionary)[1]
  for (i in names(counting.dictionary)){
    if(counting.dictionary[[i]] > counting.dictionary[[max.value.index]]){
      max.value.index <- i
      max.value.array <- i
    }
    if( (counting.dictionary[[i]] == counting.dictionary[[max.value.index]]) & !(i %in% max.value.array)){
      max.value.array <- c(max.value.array, i)
    }
  }
  if ( counting.dictionary[[max.value.array[1]]] == 1){
    return (NA)
  } else {
    return(as.numeric(max.value.array) )
  }
}
