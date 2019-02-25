## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invera <- NULL
  set <- function(y) {
    x <<- y
    inversa <<- NULL
  }
  get <- function() x
  setinverse <- function(inversa) inver <<- inversa
  getinverse <- function() inver
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
inver <- x$getinversa()
  if (!is.null(inver)) {
                message("getting cached data")
    return(inver)
  }
  matriz <- x$get()
  inversa <- solve(matriz, ...)
  x$setinversa(inver)
  inver
}
