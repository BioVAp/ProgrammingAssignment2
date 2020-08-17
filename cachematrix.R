## gets a special matrix and inverse it.

## first it sets the matrix, then it get its, then it sets
  ##the inverse, to later get the inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(z){
    x <<- z
    m <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}
## it sets the inverrse if you didnt get it in the above one
  ##then if its not the inverse it inverse it.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  lol <- x$get()
  m <- solve(mat,...)
  x$setInverse(m)
  m
}