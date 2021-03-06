## This function creates a special "matrix" object that
## can cache its inverse.


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setinv
}


## This function computes the inverse of a special "matrix" returned by 
## MakeCacheMatrix above. If the inverse has already been calculated, then
##CacheSolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        m <- x$getsolve()
        if(!is.null(m)){
          message("getting cached data")
          return(m)
        }
        data <- x$get()
        m <- solve (data, ...)
        x$setsolve(m)
        m
}

