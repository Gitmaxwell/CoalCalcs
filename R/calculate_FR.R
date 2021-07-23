#' @title Calculate fuel ratio
#' @description This function calculates coal fuel ratio which is required for coal boiler design
#' @param VM Volatile matter
#' @param FC Fixed carbon
#' @details 
#' Formula for determining fuel ratio. The formula is:
#' 
#' \deqn{FR = FC/VM} 
#' 
#' Where FC and VM are at the same basis
#' 
#'  
#' @export
#' @examples 
#' calculate_FR(FC=65,VM=18)


calculate_FR <- function (VM=NA,FC=NA) 
{
  (FC/VM)
  
}
