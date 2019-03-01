## El script que se presenta a continuación, tiene como finalidad presentar la funcionalidad de la 
## creación de dos funciones, "makeCacheMatrix" y "cacheSolve", la esencia de este ejercicio es 
## presentar la funcionalidad del almacenaje de objetos en cache mostrando su utilidad práctica. 


## La función makeCacheMatrix permite crear un objeto de tipo matriz, con la particularidad que almacena en caché la
## inversa de la misma, guardando al final las funciones correspondientes en una lista.

makeCacheMatrix <- function(x = matrix()) {
        inversa <- NULL
  set <- function(y) {
    x <<- y
    inversa <<- NULL
  }
  get <- function() x
  setinverse <- function(inversa) inver <<- inversa
  getinverse <- function() inver
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## La función cacheSolve está enlazada con la función anterior, en general permite calcular la 
## inversa de la matriz suministrada en la función makeCacheMatrix, en caso de que la inversa 
## haya sido calculada la función recupera la inversa almacenada en el cache.

cacheSolve <- function(x, ...) {
inver <- x$getinverse()
  if (!is.null(inver)) {
                message("getting cached data")
    return(inver)
  }
  matriz <- x$get()
  inversa <- solve(matriz, ...)
  x$setinverse(inver)
  inver
}



