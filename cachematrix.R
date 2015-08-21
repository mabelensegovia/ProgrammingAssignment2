## Put comments here that give an overall description of what your
## functions do

##makeVector creates a list containing a function to
##set the value of the matrix
##get the value of the matrix
##set the inverse of the matrix
##get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  
  setm <-function (y){
    x <<- y
    m <<- NULL
  }
  getm<- function() x
  setinverse <-function (inverse) m<<-inverse
  getinverse <- function() m
  list(setm=setm,getm=getm,setinverse=setinverse,getinverse=getinverse)
}

## The following function calculates the inverse of a "special" matrix created with 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m<-x$getinverse()
  if(!is.null=(m)){
    message("getting cached data")
    return(m)
    
  }
  data <- x$getm()
  m <-solve(data,...)
  x$cacheinverse(m)
  
  m
  
}
