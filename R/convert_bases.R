#' @title Convert (coal) bases
#' 
#' @description This function enables the conversion of coal analyses to a desired moisture basis
#' 
#' @param x The analyses to be converted, for example ash, volatile matter, fixed carbon ect. _Character_, _required_
#' @param fromto The text string indicating the desired conversion, _Character_, _required_
#' @param im Inherent moisture \% (commonly refered to as air dried moisture). _Numeric_
#' @param tm  Total moisture \% (the free and air dried moisture). _Numeric_
#' @param nm  Nomiated moisture. _Numeric_
#' @param Ashd  Ash \% (dry basis).  _Numeric_
#' @details
#' The function allows for the conversion of coal analyses from or to (fromto) desired mositure basis including:
#'  
#' * From air dried basis to dry ("adtodry") or from dry to air dried ("drytoad") 
#' 
#' * From air dried basis to as received ("adtoar") or from as received to air dried ("artoad") 
#' 
#' * From air dried basis to any nominated (fixed) basis ("adtonm")
#' 
#' * From as received to dry ("artodry") or from dry to as received ("drytoar")
#' 
#' 
#' 
#' Valid fromto text strings include any of:
#' 
#' "adtodry","adtoar", "artoad","adtonm", "artodry","drytoad","drytoar","drytodaf"
#' 
#'  *"adtodry"*
#'  
#'@md  
#' @export
#' @examples CoalCalcs::convert_bases(13.5,"adtonm",4,NA,5,NA)


convert_bases <- function (x, fromto,im=NA,tm=NA,nm=NA,Ashd=NA) 
{
  if (!(fromto %in% c("adtodry","adtoar", "artoad","adtonm", "artodry","drytoad","drytoar","drytodaf"))) {"Not a valid conversion string, see convert_basis_options() for valid strings"}
  else
    if (fromto %in% c("adtodry")) {x*100/(100-im)}
  else
    if (fromto %in% c("adtoar")) {x*(100-tm)/(100-im)}
  else
    if (fromto %in% c("adtonm")) {x*(100-nm)/(100-im)}
  else
    if (fromto %in% c("artoad")) {x*(100-im)/(100-tm)}
  else
    if (fromto %in% c("artodry")) {x*(100)/(100-tm)}
  else
    if (fromto %in% c("drytoad")) {x*(100-im)/(100)}
  else
    if (fromto %in% c("drytoar")) {x*(100-tm)/(100)}
  else
    if (fromto %in% c("drytodaf")) {x*100/(100-Ashd)}
  #reference http://www.drummondco.com/wp-content/uploads/coalconversionfacts200704_06_2009.pdf
  # Ash (A),Volatile Matter (VM), Fixed Carbon (FC),Sulphur (S) and Calorific Value (CV) – can be expressed on any of the above bases
}

