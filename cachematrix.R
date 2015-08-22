## Put comments here that give an overall description of what your
# functions do
# These functions will invert a matrixand save the answer somewhere
# so that the calculations do not need to be repeated


## Write a short comment describing this function

# This function saves the results of another function , cacheSolve.
# It is comprised of 4 individual functions. The functions are saved as a list

makeCacheMatrix <- function(x = matrix()) {
  
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}

## Write a short comment describing this function

# This function checks if the answer is in the cache i.e.makeCacheMatrix
# If not it will solve the inverse of the matrix and save it in the cache

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  
  
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m
  
  
}
