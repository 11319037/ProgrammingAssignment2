## caching the inverse of matrix
## makecachematrix function create a object "matrix" to cache its inverse
## set the value of the matrix


makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
  setmatrix=setmatrix,
  getmatrix=getmatrix)
}

## cachesolve function create the inverse of 'matrix' returned by makecachematrix above
cacheSolve <- function(x=matrix(), ...) {
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m 
    ##Return a matrix that is the inverse of 'x'
}
