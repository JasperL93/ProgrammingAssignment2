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
getinverse = getinverse
)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
