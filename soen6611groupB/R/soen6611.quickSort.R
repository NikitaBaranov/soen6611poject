#' Quick sort.
#'
#' @param input_array input array of numbers
#' @return sorted array of numbers
#' @export
#' @keywords internal
#' @examples
#' arr <- c(2, 1, 2, 3, 0)
#' sorted_arr <- soen6611.median(arr)
#'
#' sorted_arr <- soen6611.median(c(2, 1, 2, 3, 0))

soen6611.quickSort <- function(input_array) {
  # print(c("length ", length(input_array)))
  if (length(input_array) <= 1){
    # print(c("return ", input_array))
    return (input_array)
  }
  split_point <- length(input_array) %/% 2
  split_point_2 <- split_point+1
  # print(c("split_point ", split_point))
  # print(c("split_point_2 ", split_point_2))
  return (soen6611.merge(soen6611.quickSort(input_array[1:split_point]),  soen6611.quickSort(input_array[split_point_2:length(input_array)])))
}

#' Merge part of Quick sort.
#'
#' @param input_array_1 input array of numbers
#' @param input_array_2 input array of numbers
#' @return sorted array of numbers
#' @export
#' @keywords internal
soen6611.merge <- function(input_array_1, input_array_2){
  # print(c("Merge 1 ", input_array_1))
  # print(c("Merge 2 ", input_array_2))
  index_1 <- 1
  index_2 <- 1
  output_arr <- c()
  while (index_1 <= length(input_array_1) && index_2 <= length(input_array_2) ){
    if ( input_array_1[[index_1]] < input_array_2[[index_2]] ){
      output_arr <- c(output_arr, input_array_1[[index_1]])
      index_1 <- index_1 + 1
    } else {
      output_arr <- c(output_arr, input_array_2[[index_2]])
      index_2 <- index_2 + 1
    }
  }

  if (index_1 <= length(input_array_1)){
    while (index_1 <= length(input_array_1)) {
        output_arr <- c(output_arr, input_array_1[[index_1]])
        index_1 <- index_1 + 1
    }
  }
  if (index_2 <= length(input_array_2)){
    while (index_2 <= length(input_array_2)) {
      output_arr <- c(output_arr, input_array_2[[index_2]])
      index_2 <- index_2 + 1
    }
  }
  return (output_arr)
}
