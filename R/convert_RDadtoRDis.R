#' @title Convert relative density (air dried) (RDad) to insitu density (RDis)
#' @description This function converts relative density (air dried) (RDad) to insitu density (RDis) using Prestons Sanders equation 
#' @param RDad Relative density (air dried) (required)
#' @param im Inherent moisture \% (commonly refered to as air dried moisture)
#' @param is  Insitu moisture \% (required for "prestons" method)
#' @details 
#' Uses Preston Sanders formula to convert relative density (air dried) (RDad) to insitu density (RDis). The forumla is:
#' 
#'  RDis = (RDad*(100-im))/(100+RDad*(is-im)-is) 
#' @export
#' @examples 
#' convert_RDadtoRDis(1.4,3.4,5.2)


convert_RDadtoRDis <- function (RDad=NA,im=NA, is=NA) 
{
  (RDad*(100-im))/(100+RDad*(is-im)-is)

}