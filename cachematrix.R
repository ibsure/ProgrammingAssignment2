## Put comments here that give an overall description of what your
## functions do

## Main function - makeCacheMatrix contains 4 functions: set, get, setinv, getinv. 

makeCacheMatrix <- function(x = matrix()) {
    ##function that changes the matrix stored in the main function
    set <- function(y) {
    x <<- y
    }
    ##function that returns the matrix x stored in the main function
    get <- function() x
    ##function that stores the inverse value of the input matrix into the main function 
    setinv <- function(inv) m <<- solve(x)
    ##function that returns the inverse value of the input matrix into the main function
    getinv <- function() m
    ##the following line stores the four functions:
    list(set = set, get = get,
    setinv = setinv,
    getinv = getinv)
}


## Write a short comment describing this function
## cacheSolve - function that verify if the inverse of 'x' exists in cache 
cacheSolve <- function(x, ...) { 
    m <- x$getinv()
    ##check if inverse matrix value stored previously with getinv, exists and is not NULL. 
    if(!is.null(m)) {
       message("getting cached data")
       return(m)  ## If value exists in cache "return(m)" and exit the function
    }

    ## Return a matrix that is the inverse of 'x'
    data <- x$get()
   m <- solve(data, ...)
   x$setinv(m)
   m
}
