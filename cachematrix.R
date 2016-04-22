## Well i'm 100% newbie in programming, so i'm really insecure about this assignment
## not because of the difficulty of it, but because its lack of it, kinda feels like cheating

## well here it is i just blatantly copied the example and changed the names of the functions so they say they are cacheing 
## the inverse not the mean. i also changed the name of the inner variable from m to inv because of pretty.

makeCacheMatrix <- function(x = matrix()) {  ## don't really know how to restrict the function to only take inversible matrices
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Same case as before

cacheSolve <- function(x, ...) {
+     inv <- x$getinverse()
+     if(!is.null(inv)) {
+         message("getting cached data")
+         return(inv)
+     }
+     data <- x$get()              
+     inv <- solve(data, ...)      ## so here i changed the function name and that's almost it
+     x$setinverse(inv)            ## i considered changing the inv variable in this part for another name, because it actually doesn't interact 
+     inv                          ## with the first part, but maybe 1 variable is better than 2 
+ }
