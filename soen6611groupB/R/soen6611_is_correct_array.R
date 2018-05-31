# Validate an array to contain only numeric.
Soen6611IsCorrectArray <- function(input.array) {
  for (i in 1:length(input.array)){
    if( !is.numeric(input.array[i]) ){
      return (FALSE)
    }
  }
  return (TRUE)
}
