## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## get set setmatrix and getmatrix methods in this function

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


## Write a short comment describing this function
## calls the getmatrix method when this function is called with a matirx parameter passed and checks if the inverse exists in the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         m<-x$getmatrix()
          if(!is.null(m)){
              message("getting cached data")
              return(m)
         }
         matrix<-x$get()
         m<-solve(matrix, ...)
         x$setmatrix(m)
          m

}
