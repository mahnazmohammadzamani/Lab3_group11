#' @name dijkstra
#' @title dijkstra function
#' @param graph A data_frame
#' @param init_node A number
#' @description calculates the shortest path from the initial node to every other node in the graph
#' @return return shortest path from the initial node to every other node in the graph.
#' @references \url{https://en.wikipedia.org/wiki/Dijkstra\%27s algorithm}
#' @export dijkstra
#' @keywords wiki_graph
#' @examples 
#' wiki_graph <-
#' data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
#'            v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
#'           w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))
#' dijkstra(wiki_graph, 1)
#' dijkstra(wiki_graph, 3)
#' @importFrom igraph add_edges
#' @importFrom igraph distances
#' @importFrom igraph make_empty_graph
#' @format wiki_graph
#' @import igraph



dijkstra <- function(graph,init_node){
  stopifnot(is.data.frame(graph),is.numeric(init_node),ncol(graph)==3)
  node_matrix <- matrix(ncol = 2,NA,nrow = length(graph$v1))
  node_matrix[,1] <-graph$v1
  node_matrix[,2] <-graph$v2
  graph_uniqe <- graph[!duplicated(graph$v1), ]
  empty_graph <- make_empty_graph(nrow(graph_uniqe))
  g_edges <- add_edges(graph=empty_graph, edges=t(node_matrix))
  E(g_edges)$weight <- graph$w
  node_distance <- distances(g_edges, mode="out")
  shortest_path <- node_distance[,init_node]
  return(shortest_path)
}



