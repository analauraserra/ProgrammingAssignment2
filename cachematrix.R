### These functions cache the inverse of a matrix
####################################################################################

### This function creates the "matrix" whose inverse will be calculated
makeCacheMatrix <- function(ma = matrix()) {
        ### creates a list of attributes for an n x n matrix ma:
        ### set -> sets ma
        ### get -> gets ma
        ### setinv -> sets the inverse of ma
        ### getinv -> gets the inverse of ma
        verifySqMatrix(ma)
        am <- matrix() 
        set <- function(y) {
                verifySqMatrix(y)
                ma <<- y
                am <<- matrix() 
        }
        get <- function() ma
        setinv <- function(solve) am <<- solve
        getinv <- function() am

        list(set = set, get = get,
          setinv = setinv,
          getinv = getinv)
}

### This function verifies whether a matrix is square; if not, it displays a warning
verifySqMatrix <- function(ma = matrix()) {
        if(ncol(ma)!=nrow(ma)){
                message("warning: this matrix is not square; use set() to ammend")
        }
}

### This function computes the inverse of a matrix only if it has not been 
### previously computed
cacheSolve <- function(ma, ...) {
        ### returns the inverse of the matrix ma
        am <- ma$getinv()
        if(!is.na(am[1][1])) {
                message("getting cached data")
                return(am)
        }
        data <- ma$get()
        am <- solve(data, ...)
        ma$setinv(am)
        am
}
