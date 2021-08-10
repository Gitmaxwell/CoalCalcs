#' @title Calculate phosphorus in coal 
#' @description This function calculates phosphorus in coal from ash analysis
#' @param A Ash %
#' @param P2O5 P2O5 % from ash analysis
#' @details 
#' Uses the below formula to calculate phosphorus in coal.
#' 
#' \deqn{0.43642*A*P2O5/ 100} 
#' 
#' Where A and P2O5 are at the same basis
#' 
#'  
#' @export
#' @examples 
#' calculate_phos(A=15,P2O5=5)


calculate_phos <- function (A=NA,P2O5=NA) 
{
0.43642*A*P2O5/100
  
}
