Soen6611GroupBClassMinMax <- function(input.array=c()){
  thisEnv <- environment()
  arr <- input.array
  min <- NA
  max <- NA

  MinMax <- function(input.array) {
    # if (!Soen6611IsCorrectArray(input.array)){
    #  stop('Array must contain only numbers.')
    # }
    max.value <- input.array[1]
    min.value <- input.array[1]
    for (i in 1:length(input.array)){
      if(input.array[i] < min.value){
        min.value <- input.array[i]
      }
      if(input.array[i] > max.value){
        max.value <- input.array[i]
      }
    }
    return( list(min = min.value, max = max.value) )
  }

  me <- list(
    thisEnv = thisEnv,

    getArray = function(){
      return(get("arr", thisEnv))
    },

    setArray = function(input.array){
      assign("min", NA, thisEnv)
      assign("max", NA, thisEnv)
      return(assign("arr", input.array, thisEnv))
    },

    min = function(){
      if (is.na(min)) {
        print ("call MinMax")
        res = MinMax(get("arr", thisEnv))
        assign("min", res$min , thisEnv)
        assign("max", res$max, thisEnv)
      }
      return(get("min", thisEnv))
    },

    max = function(){
      if (is.na(max)) {
        print ("call MinMax")
        res = MinMax(get("arr", thisEnv))
        assign("min", res$min , thisEnv)
        assign("max", res$max, thisEnv)
      }
      return(get("max", thisEnv))
    }
  )

  ## Define the value of the list within the current environment.
  assign("this", me, envir=thisEnv)

  ## Set the name for the class
  class(me) <- append(class(me), "Soen6611GroupBClass")
  return(me)
}
