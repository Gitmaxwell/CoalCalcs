#' @title Convert Calorific Value (CV) units
#' @description This functio converts Calorific Value between units kcal/kg, Mj/kg, Btu/lb and Mj/kg to J/g 
#' @param fromto Text string indicating desired conversion. May be one of "kcaltomj", "kcaltobtu", "mjtokcal", "mjtobtu", "btutomj", "btutokcal"
#' @param CV Calorific Value
#' @details 
#' Uses conversion factors as outlined in AS 1038.16 to convert Calorific value units which may be reproted in kcal/kg, Mj/kg, or Btu/lb  
#' 
#' \deqn{RDis = (RDad*(100-Mad))/(100+RDad*(Mis-Mad)-Mis)} 
#' 
#' @references 
#' AS 1038.16 Australian Standard. Coal and Coke - Analysis and testing - Higher Rank Coals - Reporting of Test Results
#' 
#' MineSkill Australia, 2001, Understanding Caol Quality, Willson, W., Daneille, F., Gibson, L. (eds). 
#' @export
#' @examples 
#' #Convert CV units in Mj/kg to kcal/kg and Btu/lb
#' l = c("mjtokcal", "mjtobtu")
#' sapply(l, function (x) CoalCalcs::convert_CV_units(x,40))
    


convert_CV_units <- function (fromto,CV) 
{
  if (!(fromto %in% c("kcaltomj", "kcaltobtu", "mjtokcal", "mjtobtu", "btutomj", "btutokcal"))) {"Not a valid conversion string"}
  
  else
    if (fromto %in% c("kcaltomj")) {CV/238.846}
  else
    if (fromto %in% c("kcaltobtu")) {CV/0.5555} 
  else
    if (fromto %in% c("mjtokcal")) {CV/0.004187} 
  else
    if (fromto %in% c("mjtobtu")) {CV/0.002326} 
  else
    if (fromto %in% c("btutomj")) {CV/429.923} 
  else
    if (fromto %in% c("btutokcal")) {CV/1.8} 
  
}