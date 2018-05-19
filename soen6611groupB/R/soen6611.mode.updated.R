#' Find the value that appears most frequently in the given data set.
#'
#' @param input_array input array of numbers
#' @return the value that appears most frequently in the given data set.
#'         If there is more than one equal mode the smallest will be returned.
#'
soen6611.mode <- function(input_array)
  {
  maxcount<- 0
  modevalue<- 0
  for (i in 1:length(input_array))
    {
      count<- 0
      for (j in 1:length(input_array))
        {
          if(input_array[i]==input_array[j])
            count <- count + 1
      }
      if(count>maxcount)
      {
        maxcount <- count
        modevalue <- input_array[i]
        if(count == 1)
          modevalue = NA
      }
    }
  return(modevalue)
}
