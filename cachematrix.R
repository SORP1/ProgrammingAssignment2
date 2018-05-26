## "makeCacheMatrix & "cacheSolve" functions are used to compute and cache the inversre of a matrix

##  "makeCacheMatrix" function will create a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  im <- NULL
  set <- function(y) {
    x <<- y
    rm <<- NULL
  }
get <- function() x
setinvmatrix <- function(solve) im <<- invmatrix
getinvmatrix <- function() im
list(set=set, get=get, setinvmatrix=setinvmatrix, getinvmatrix=getinvmatrix)

}


## This function computes the inverse of the matrix object returned by the function above. It checks whether the inverse has been calculated and then retrieves the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  im <- x$getinvmatrix()
  if (!is.null(im)){
        message("getting cached data")
        return(im)
  }
  data <-x$get()
  im <- solve(data,...)
  x$setinvmatrix(im)
  im
}
