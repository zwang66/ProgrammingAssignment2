## Put comments here that give an overall description of what your
## functions do cache the inverse of a matrix
## The firs function gets the matrix and calls the second function to calculate the inverse
## The second function returns the inverse
## The result will be stored in the first function

## Write a short comment describing this function
## This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}



## Write a short comment describing this function
## This function calculates the inverse matrix of x and return the inverse matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                m <- x$getinverse()
                if(!is.null(m)) {
                        message("getting cached data")
                        return(m)
                }
                matrix <- x$get()
                m <- solve(matrix)
                x$setinverse(m)
                m


}
        

