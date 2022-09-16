#' @title 
#' Nodes and the weight between each two nodes.
#' a data.frame with three variables (v1, v2 and w)
#' @format A data frame with 3 variables:
#' \describe{
#'   \item{v1}{Source Node}
#'   \item{v2}{Destination Node}
#'   \item{w}{The wirght between the source and destination Node}
#' }
#' @references \url{https://en.wikipedia.org/wiki/Graph_mathematics}

wiki_graph <-
  data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
             v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
             w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))

usethis::use_data(wiki_graph, overwrite = TRUE)
