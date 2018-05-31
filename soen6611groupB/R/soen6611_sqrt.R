# Function to find square root of numbers
Soen6611Sqrt <- function(number)
{
  sqroot <- 0
  for (i in 1:number)
  {
    if(number == 0 || number == 1)
      return(number)

    if (number < 1)
    {
      return(Soen6611SqrtExpcase(number * 100))
    }

    root <- i * i
    if (root == number)
      sqroot <- i

    if (root < number)
    {
      x <- number / i
      sqroot <- (i + x) / 2
    }
  }
  return(sqroot)
}

# Function to find the square root of the numbers between 0 and 1
Soen6611SqrtExpcase <- function(number)
{
  sqroot <- 0
  for (i in 1:number)
  {
    root <- i * i
    if (root == number)
      sqroot <- i

    if (root<number)
    {
      x <- number / i
      sqroot <- (i + x) / 2
      sqroot <- sqroot / 10
    }
  }
  return(sqroot)
}
