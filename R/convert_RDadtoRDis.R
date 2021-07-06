#' @title Convert relative density (air dried) (RDad) to insitu density (RDis)
#' @description This function converts relative density (air dried) (RDad) to insitu density (RDis) using Prestons Sanders equation 
#' @param RDad Relative density (air dried) (required)
#' @param Mad Air dried moisture %
#' @param Mis Insitu moisture
#' @details 
#' Uses Preston Sanders formula (Preston and Sanders (1993)) to convert relative density (air dried) (RDad) to insitu density (RDis). The forumla is:
#' 
#' \deqn{RDis = (RDad*(100-Mad))/(100+RDad*(Mis-Mad)-Mis)} 
#' 
#' @references 
#' Preston, K.B., Sanders, R.H., 1993. Estimating the in-situ relative density of coal. Aust. Coal Geol. 9.
#'  
#' @md
#' @export
#' @examples 
#' convert_RDadtoRDis(RDad=1.4,Mad=3.4,Mis=5.2)


convert_RDadtoRDis <- function (RDad=NA,Mad=NA, Mis=NA) 
{
  (RDad*(100-Mad))/(100+RDad*(Mis-Mad)-Mis)

}

#