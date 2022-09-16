
# algorithm to find the greatest common divisor of two numbers
#' @name euclidean
#' @title euclidean function
#' @param a A number.
#' @param b A number.
#' @description algorithm to find the greatest common divisor of two numbers
#' @return the greatest common divisor of two numbers
#' @references \url{https://en.wikipedia.org/wiki/Euclidean algorithm}
#' @details the greatest common divisor of two numbers
#' @examples 
#' euclidean(123612, 13892347912)
#' euclidean(123612, 13892347912)
#' @export euclidean



euclidean <- function(a,b){
  stopifnot(is.numeric(a)& is.numeric(b))
  while (b!=0) {
    t <-  b
    b <-  a%%b
    a <-  t
  }
  return(a)
}

