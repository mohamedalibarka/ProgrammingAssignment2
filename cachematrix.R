## Put comments here that give an overall description of what your
## functions do

## This funtion creates a vector containing 4 fuctions used to store  the input 
## matrix and its inverse

makeCacheMatrix <- function(x = matrix()) {
    inv<-NULL
    set<- function(mat) {
        x<<- mat
        inv<<-NULL
    }
    get<- function() x
    setInv<- function(inver) inv<<-inver
    getInv<- function() inv
    list(set=set,get=get,setInv=setInv,getInv=getInv)
}


## Checks if the inverse matrix has already been calculated; if not it
## calculates it then stores it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv<-x$getInv()
        if (!is.null(inv)) {
            message("Getting cashed inversed matrix")
            return(inv)
        }
        matrix<-x$get()
        invMatrix<-solve(matrix)
        x$setInv(invMatrix)
        invMatrix
}
