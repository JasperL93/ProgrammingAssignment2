## This is the code for Programming Assignment 2: lexical scoping

## makeCacheMatrix: This function creates a special "matrix" object that can cache its inverse.
## This is a list which combines the following:
## - set & get the value of the matrix
## - set & set the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
}

get <- function() x
setinverse <- function(inv) i <<- inv
getinverse <- function() i
list(
	set = set,
	get = get,
	setinverse = setinverse,
	getinverse = getinverse)
}

## cacheSolve: This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should 
## retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
	i <- x$getinverse()
	if(!is.null(i)) {
		message("getting cached data")
		return(i)
}

	m <- x$get()
	i <- solve(m, ...)
	x$setinverse(i)
	i
}
