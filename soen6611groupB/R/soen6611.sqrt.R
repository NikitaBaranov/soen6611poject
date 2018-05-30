# Function to find square root of numbers
soen6611.sqrt <- function(number)
{
  sqroot <-0
  for (i in 1:number)
  {
    if(number==0 || number==1)
      return(number)

    if (number<1)
    {
      return(soen6611.sqrt.expcase(number*100))
    }

    root <- i * i
    if (root==number)
      sqroot <- i

    if (root<number)
    {
      x <- number/i
      sqroot <- (i+x)/2
    }
  }
  return(sqroot)
}

# Function to find the square root of the numbers between 0 and 1
soen6611.sqrt.expcase <- function(number)
{
  sqroot <-0
  for (i in 1:number)
  {
    root <- i * i
    if (root==number)
      sqroot <- i

    if (root<number)
    {
      x <- number/i
      sqroot <- (i+x)/2
      sqroot <- sqroot/10
    }
  }
  return(sqroot)
}
