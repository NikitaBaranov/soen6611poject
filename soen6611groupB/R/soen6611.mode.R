#' Find the value that appears most frequently in the given data set.
#'
#' @param input_array input array of numbers
#' @return the value that appears most frequently in the given data set.
#'         If there is more than one equal mode the smalles will be returned.
#' @export
#' @examples
#' arr <- c(2, 1, 3, 0)
#' soen6611.mode(arr)
#'
#' soen6611.mode(c(2, 1, 3, 0))
soen6611.mode <- function(input_array) {
  if (! soen6611.isCorrectArray(input_array)){
    stop('Array must contain only numbers.')
  }
  counting_dictionary <- list()
  # populate dictionary while count enities
  for (i in 1:length(input_array)){
    if ( input_array[i] %in% names(counting_dictionary) ){
      counting_dictionary[toString(input_array[i])] <- counting_dictionary[[ toString(input_array[i] )]]+ 1
    } else{
      counting_dictionary[toString(input_array[i])] <- 1
    }
  }

  # find max element
  max_value_index <- names(counting_dictionary)[1]
  max_value_array <- names(counting_dictionary)[1]
  for (i in names(counting_dictionary)){
    if(counting_dictionary[[i]] > counting_dictionary[[max_value_index]]){
      max_value_index <- i
      max_value_array <- i
    }
    if( (counting_dictionary[[i]] == counting_dictionary[[max_value_index]]) & !(i %in% max_value_array)){
      max_value_array <- c(max_value_array, i)
    }
  }
  if ( counting_dictionary[[ max_value_array[1] ]] == 1){
    return ( NA )
  } else {
    return( as.numeric(max_value_array) )
  }
}
