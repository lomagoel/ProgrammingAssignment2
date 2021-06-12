## makeCacheMAtrix will create a list of getters and setters of matrix and inverse functions


makeCacheMatrix <- function(x = matrix()) {
  i<-NA
  setMatrix<-function(y){ 
  x<<-y
  i<<-NA
}
getMatrix <- function() x
setInverse <-function(i) i<<-solve
getInverse <-function(x) i
  list(set=setMatrix,get=getMatrix,setInverse=setInverse,getInverse=getInverse)
}


## cacheSolve will first check if inverse is available in present. x is a named list 
cacheSolve <- function(x, ...) {
  if (!x$getInverse()=NA){
    return (x$getInverse())
  }
  else{
    matrix <- x$getMatrix()
    i<-solve(matrix)
    setInverse(i)
    return (i)
    }
  
  
        ## Return a matrix that is the inverse of 'x'
}
