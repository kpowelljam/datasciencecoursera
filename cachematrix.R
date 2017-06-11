## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##this function creates 2 getter functon and 2 setter functions
##which are used to set a matrix object and cache and/or return 
#its cached inverse
makeCacheMatrix <- function(x = matrix(nrow=3,ncol=3)) {
    inv <-NULL
    setmatrix<-function(m){
        x <<- m
        inv <<- NULL
        #message("set is called") 
    }
    
    getmatrix<- function(){
        #message("get is called") 
        return(x)
    }
    setinverse <- function(inverse) inv <<- inverse
    getinverse <- function() inv
    list(setmatrix = setmatrix, getmatrix = getmatrix,
         setinverse = setinverse,
         getinverse = getinverse)
    
}


## Write a short comment describing this function
#this function is used to compute the inverse of matrix
#that was created by the Ma
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)) {
        message("getting cached inverse")
        return(m)
    }
    data <- x$getmatrix()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
