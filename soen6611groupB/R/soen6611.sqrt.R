#' Find square root of a number
#'
#' @param number a number
#' @return square root value
#' @export
#' @examples
#' soen6611.sqrt(25)
soen6611.sqrt <- function(number)
{
  for (i in 1:number-1)
  {
    root <- i * i
    if (root==number)
      sqroot = i
    if (root<number)
    {
      x <- number/i
      sqroot = (i+x)/2
    }
  }
  return(sqroot)
}
