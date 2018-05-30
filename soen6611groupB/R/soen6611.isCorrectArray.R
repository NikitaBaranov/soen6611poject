# Validate an array to contain only numeric.
soen6611.isCorrectArray <- function(input_array) {
  for (i in 1:length(input_array)){
    if( ! is.numeric(input_array[i]) ){
      return (FALSE)
    }
  }
  return (TRUE)
}
