## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
y<<- x
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  y<-solve(x)
  y
}
x<-matrix(1:4,nrow = 4)
x
solve(x)
makeCacheMatrix(x)
cacheSolve(makeCacheMatrix(x))
