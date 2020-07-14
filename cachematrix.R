## This program allows you to creates a matrix stored in cache and gets 
## that matrix stored and gets &calculates the inverse of that matrix

## This function allows you to store the matrix x in cache 
## aswell as get the matrix, with this it also stores the 
## inverse matrix in cache and gets inverse matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  ## sets & gets matrix 
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  
  ## sets & gets inverse matrix 
  setinv<- function(inversex) inv <<- inversex
  getinv <- function() inv
  
  ## stores functions into a list
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)

}


## Calculates the inverse of the matrix x inputed

cacheSolve <- function(x, ...) {

  inv <- x$getinv()
  #check if inverse is already calculated
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  #calculates inverse & returns inverse
  data <- x$get()
  inv <- solve(data)
  x$setinv(inv)
  inv
}

mat<-makeCacheMatrix(matrix(1:4,nrow = 2))
mat$get()
cacheSolve(mat)
