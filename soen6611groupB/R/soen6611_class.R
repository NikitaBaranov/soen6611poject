#' Class for Descriptive analitics
#'
#' @param input.array input array of numbers
#' @return Instance of a class for Descriptive analitics
#' @export
#' @examples
#' Soen6611GroupBClass()
#'
#' arr <- c(2, 1, 3, 0)
#' Soen6611GroupBClass(arr)
#'
#' Soen6611GroupBClass(c(2, 1, 3, 0))
Soen6611GroupBClass <- function(input.array=c()){
  thisEnv <- environment()
  arr <- input.array

  max <- NA
  mean <- NA
  median <- NA
  min <- NA
  mode <- NA
  std <- NA

  me <- list(
    thisEnv = thisEnv,

    getArray = function(){
      return(get("arr", thisEnv))
    },

    setArray = function(input.array){
      assign("max", NA, thisEnv)
      assign("mean", NA, thisEnv)
      assign("median", NA, thisEnv)
      assign("min", NA, thisEnv)
      assign("mode", NA, thisEnv)
      assign("std", NA, thisEnv)
      return(assign("arr", input.array, thisEnv))
    },

    max = function(){
      if (is.na(get("max", thisEnv))) {
        assign("max", Soen6611Max(get("arr", thisEnv)), thisEnv)
      }
      return(get("max", thisEnv))
    },

    mean = function(){
      if (is.na(get("mean", thisEnv))) {
        assign("mean", Soen6611Mean(get("arr", thisEnv)), thisEnv)
      }
      return(get("mean", thisEnv))
    },

    median = function(){
      if (is.na(get("median", thisEnv))) {
        assign("median", Soen6611Median(get("arr", thisEnv)), thisEnv)
      }
      return(get("median", thisEnv))
    },

    min = function(){
      if (is.na(get("min", thisEnv))) {
        assign("min", Soen6611Min(get("arr", thisEnv)), thisEnv)
      }
      return(get("min", thisEnv))
    },
    mode = function(){
      if (is.na(get("mode", thisEnv))) {
        assign("mode", Soen6611Mode(get("arr", thisEnv)), thisEnv)
      }
      return(get("mode", thisEnv))
    },
    std = function(){
      if (is.na(get("std", thisEnv))) {
        assign("std", Soen6611Std(get("arr", thisEnv)), thisEnv)
      }
      return(get("std", thisEnv))
    }
  )

  ## Define the value of the list within the current environment.
  assign("this", me, envir=thisEnv)

  ## Set the name for the class
  class(me) <- append(class(me), "Soen6611GroupBClass")
  return(me)
}
