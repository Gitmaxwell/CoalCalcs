#' @title Convert (coal) bases
#' 
#' @description This function enables the conversion of coal analyses to a desired moisture basis
#' 
#' @param x The analyses to be converted, for example ash, volatile matter, fixed carbon ect.
#' @param fromto The text string indicating the desired conversion
#' @param im Inherent moisture \% (commonly refered to as air dried moisture)
#' @param tm  Total moisture \% (the free and air dried moisture)
#' @param nm  Nomiated moisture
#' @param Ashd  Ash \% (dry basis)
#' @param Ashad Ash \% (air dry basis)
#' @param Ashar Ash \% (as received basis)
#' @param Sdry Total Sulfur \% (dry basis)
#' @details
#' The function allows for the conversion of common coal analyses from or to desired mositure basis. This function is NOT suitable for relative density basis conversion. Bases conversions include:
#'  
#' * From air dried basis to dry ("adtodry") or from dry to air dried ("drytoad") 
#' 
#' * From air dried basis to as received ("adtoar") or from as received to air dried ("artoad") 
#' 
#' * From air dried basis to any nominated (fixed) basis ("adtonm")
#' 
#' * From as received to dry ("artodry") or from dry to as received ("drytoar")
#' 
#' * From dry to dry mineral matter free (drytodmmf) using Parr formula
#' 
#' ![](forms_of_moisture.jpg)
#' 
#' 
#' 
#' Valid fromto text strings include any of:
#' 
#' "adtodry","adtoar", "artoad","adtonm", "artodry","drytoad","drytoar","drytodaf"
#' 
#'  
#' @md
#' @export
#' @examples 
#' df = data.frame(M=6.8,A=12.3, VM=36.2,FC=44.2, S=0.5)
#' df$Adry =CoalCalcs::convert_bases(df$A,"adtodry", im=df$M)
#' df$VMdry=CoalCalcs::convert_bases(df$VM,"adtodry", im=df$M)
#' df$Adry =CoalCalcs::convert_bases(df$A,"adtodry", im=df$M)
#' df$FCdry= CoalCalcs::convert_bases(df$FC, "adtodry", im=df$M)
#' df$Sdry=CoalCalcs::convert_bases(df$S,"adtodry", im=df$M)
#' df$VMdaf = CoalCalcs::convert_bases(df$VMdry,"drytodaf", im=df$M,Ashd = df$Adry)
#' df$FCdaf = CoalCalcs::convert_bases(df$FCdry,"drytodaf", im=df$M,Ashd = df$Adry)
#' df$FCdmmf = CoalCalcs::convert_bases(df$FCdry,"drytodmmf", Sdry=df$Sdry, Ashd = df$Adry)
#' 

convert_bases <- function (x, fromto,im=NA,tm=NA,nm=NA,Ashd=NA,Ashad=NA,Ashar=NA,Sdry=NA) 
{
  if (!(fromto %in% c("adtodry","adtodry", "adtodaf","drytoad", "drytoar","drytodaf","daftoad","daftoar", "daftodry","artoad","artodry","artodaf","adtonm","drytodmmf"))) {"Not a valid conversion string"}

  else
    if (fromto %in% c("adtoar")) {x*(100-tm)/(100-im)} #eq 4.19
  else
    if (fromto %in% c("adtodry")) {x*100/(100-im)} #eq 4.20 Mineskill (2011) 
  else
    if (fromto %in% c("adtodaf")) {x*100/(100-(im+Ashad))} #eq 4.21
  else
    if (fromto %in% c("drytoad")) {x*(100-im)/(100)} #eq 4.22
  else
    if (fromto %in% c("drytoar")) {x*(100-tm)/(100)} #eq 4.23
  else
    if (fromto %in% c("drytodaf")) {x*100/(100-Ashd)} #eq 4.24
  else
    if (fromto %in% c("daftoad")) {x*(100-(im+Ashad))/100} #eq 4.25
  else
    if (fromto %in% c("daftoar")) {x*(100-(im+Ashar))/100} #eq 4.26
  else
    if (fromto %in% c("daftodry")) {x*(100-Ashad)/100} #eq 4.27
  else
    if (fromto %in% c("artoad")) {x*(100-im)/(100-tm)} #eq4.28 
  else
    if (fromto %in% c("artodry")) {x*(100)/(100-tm)} #eq 4.29
  else
    if (fromto %in% c("artodaf")) {x*100/(100-(tm+tm))} #eq 4.29
  else
    if (fromto %in% c("adtonm")) {x*(100-nm)/(100-im)} #eq 4.30
  else
    if (fromto %in% c("drytodmmf")) {100*((x-0.15*Sdry)/(100-(1.08*Ashd+0.55*Sdry)))} #Speight (2015) eq 1.4

  #reference http://www.drummondco.com/wp-content/uploads/coalconversionfacts200704_06_2009.pdf
  # Ash (A),Volatile Matter (VM), Fixed Carbon (FC),Sulphur (S) and Calorific Value (CV) – can be expressed on any of the above bases
  #https://nptel.ac.in/courses/113104058/mme_pdf/Lecture2.pdf
  #http://digitalcollections.library.cmu.edu/awweb/awarchive?type=file&item=428936
  
}


