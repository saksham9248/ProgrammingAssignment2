## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(y){
                x <<- y
                inverse <<- NULL
                }
        get <- function() x
        setinverse <- function(inverses) inverse <<- inverses
        getinverse <- function() inverse
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.na(inv))
                {
                message("getting cached data")
                return(m)
                }
        data <- x$get()
        inv <- Solve(data, ...)
        x$inverse(inv)
        inv
}
}
