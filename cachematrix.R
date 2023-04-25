## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
library(MASS)
makeCacheMatrix <- function(x = matrix()) {
inv<-NULL #initializing inverse as NULL
set<-function(y){
  x<<-y
  inv<<-NULLL
}
get<-function()x #function to get matrix x
setinv<-function(inverse)inv<<-inverse
getinv<-function(){
  inver<-ginv(x)
  inver%*%x #function to obtain inverse of the  matrix
}
list(set=set, get=get,
     setinv=setinv,
     getinv=getinv)
}


## Write a short comment describing this function
#This is used to put the cache data
cacheSolve <- function(x, ...)  #gets cache data
  {
  inv<-x$getinv()
  if(!is.null(inv)){
    message("getting cached data!")
    return(inv) #returns inverse value
    }
    Data<-x$get()
    inv<-solve(data, ......)
    x$setinv(inv) #calculates inverse value
  }
        ## Return a matrix that is the inverse of 'x'

