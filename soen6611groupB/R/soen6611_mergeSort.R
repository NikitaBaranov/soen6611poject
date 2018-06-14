# Quick sort.
Soen6611MergeSort <- function(input.array) {
  if (length(input.array) <= 1){
    return (input.array)
  }
  split.point <- length(input.array) %/% 2
  split.point.2 <- split.point + 1
  return (Soen6611Merge(Soen6611MergeSort(input.array[1:split.point]), Soen6611MergeSort(input.array[split.point.2:length(input.array)])))
}

# Merge part of Quick sort.
Soen6611Merge <- function(input.array.1, input.array.2){
  index.1 <- 1
  index.2 <- 1
  output.arr <- c()
  while (index.1 <= length(input.array.1) && index.2 <= length(input.array.2) ){
    if ( input.array.1[[index.1]] < input.array.2[[index.2]] ){
      output.arr <- c(output.arr, input.array.1[[index.1]])
      index.1 <- index.1 + 1
    } else {
      output.arr <- c(output.arr, input.array.2[[index.2]])
      index.2 <- index.2 + 1
    }
  }

  if (index.1 <= length(input.array.1)){
    while (index.1 <= length(input.array.1)) {
        output.arr <- c(output.arr, input.array.1[[index.1]])
        index.1 <- index.1 + 1
    }
  }
  if (index.2 <= length(input.array.2)){
    while (index.2 <= length(input.array.2)) {
      output.arr <- c(output.arr, input.array.2[[index.2]])
      index.2 <- index.2 + 1
    }
  }
  return (output.arr)
}
