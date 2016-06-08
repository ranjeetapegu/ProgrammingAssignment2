## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##set the value of the matrix
##get the value of the matrix
## set the value of the inverse matrix
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
## x : invertible matrix
i <- NULL
set <- function(y){
## <<- assign a value to an object in an environment different from the current environment
x <<- y 
i <- NULL
}
get <- function() x
setinv <- function(inverse)
i <<- inverse
getinv <- function() i
list(set =set , get=get , setinv =setinv, getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		i <- x$getinv()
if(!is.null(i)){
message("getting cache data")
return(i)
}
mat.data <- x$get()
i<- solve(mat.data,...)
x$setinv(i)
return(i) 
}
