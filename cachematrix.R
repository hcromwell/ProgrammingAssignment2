makeCacheMatrix <- function(x = matrix()) { 
  inverse <- NULL 
    
  set <- function(y) { 
    x <<- y 
    inverse <<- NULL  
    } 
  get <- function() x   
  setinverse <- function(h)  inverse <<- h   
  getinverse <- function() inverse  
  list(set = set, get = get, 
  setinverse = setinverse, 
  getinverse = getinverse) 
  } 
cacheSolve <- function(x, ...) { 

 h <- x$getinverse() 
  if(!is.null(h)) { 
    
    message("getting cached data") 
    return(h) 
    } 

 data <- x$get() 
  h <- solve(data) 
  x$setinverse(h) 
   h 
  } 

