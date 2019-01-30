#' @title Convert relative density air dried to dry basis
#' @description This function converts relative density (air dried) (RDad) to dry density (RDdry) using Prestons Sanders equation 
#' @param RDad Relative density (air dried)
#' @param Mad Air dried moisture \%
#' @details 
#' Uses Preston Sanders formula (Preston and Sanders (1993)) to convert relative density (air dried) (RDad) to insitu density (RDdry). The forumla is:
#' 
#' \deqn{RDdry = RDad*(100-Mad)/(100-RDad*Mad)} 
#' 
#' The formula can alternatively be written:
#' 
#' \deqn{RDdry =RDad*(1-0.01*Mad))/(1-(RDad*0.01*Mad))} 
#'  
#' @export
#' @references 
#' Preston, K.B., Sanders, R.H., 1993. Estimating the in-situ relative density of coal. Aust. Coal Geol. 9.
#' @examples 
#' convert_RDadtoRDdry(RDad=1.4,Mad=4.5)


convert_RDadtoRDdry <- function (RDad=NA,Mad=NA) 
{
  (RDad*(100-Mad)/(100-RDad*Mad))

}