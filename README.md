
makeCacheMatrix creates a list of attributes for an n x n matrix M:
set -> sets M
get -> gets M
setinv -> sets the inverse of M
getinv -> gets the inverse of M

If the matrix is not square, a warning is displayed.

cacheSolve calculates the inverse of the matrix created with makeCacheMatrix. However, it first checks to see if the inverse has already been calculated. If so, it gets the inverse from the cache and skips the computation. Otherwise, it calculates the inverse of the matrix and sets the value of the inverse in the cache via the setinv() function.

Usage: 
M <- makeCacheMatrix(ma) #where ma is a matrix
INV <- cacheSolve(M)

Verification of identity:
M$get() %*% INV #or
ma %*% INV
