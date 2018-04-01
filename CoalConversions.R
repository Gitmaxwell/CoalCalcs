
library(measurements)
conv_unit
methods(conv_unit)



conv_unit_options

convert_basis <- function (x, fromto,im=NA,tm=NA,nm=NA,Ashd=NA) 
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
  if (fromto %in% c("drytoar")) {x*(100-tm)/(100)}
  else
  #check this calculation
  if (fromto %in% c("drytodaf")) {x*100/(100-Ashd)}
  #reference http://www.drummondco.com/wp-content/uploads/coalconversionfacts200704_06_2009.pdf
  # Ash (A),Volatile Matter (VM), Fixed Carbon (FC),Sulphur (S) and Calorific Value (CV) – can be expressed on any of the above bases
  }

convert_basis(13.5,"adtonm",2,NA,3)

convert_basis(13.5,"drytodaf",NA,NA,NA,10)


convert_basis_options <- function () {c("adtodry","adtoar", "artoad", "artodry","drytoad","drytoar")}

convert_basis_options()

convert_RDadtoRDis <- function (RDad=NA,method,im=NA, is=NA, Ashd=NA) 
{
  if (method %in% c("prestons")) {(RDad*(100-im))/(100+x*(is-im)-is)}
  else
  if (method %in% c("smitha")) {(100/(75.4-0.402*Ashd))} 
  else
  if (method %in% c("smithb")) {(100/(76.9-0.417*Ashd))} 
  else
  if (method %in% c("smithc")) {(100/(80.1-0.451*Ashd))} 
  else
  if (method %in% c("smithd")) {(100/(82.6-0.476*Ashd))} 
}

convert_RDadtoRDis(NA,"smithb",NA,NA,18)

calculate_RDis <- function (model,RDd,Ashd=NA,VMdaf=NA,Cdaf=NA){
  #2003 ACARP Model (direct method)
  if (model %in% c("ACARPA")) {(-0.000003953*Ashd^2+0.006924*Ashd+0.000097*VMdaf^2-0.01246*VMdaf-0.0006518*Cdaf^2+0.09801*Cdaf+0.5144*RDd^2-1.404*RDd-1.104)}
  else
    if (model %in% c("ACARPB")) {(0.00002582*Ashd^2+0.006251*Ashd+0.00008608*VMdaf^2-0.0132*VMdaf-0.0006447*Cdaf^2+0.09253*Cdaf-1.602)}
  else
    if (model %in% c("ACARPC")) {(0.5079*RDd+0.00447*Ashd-0.001783*VMdaf+0.6291)}
}  

calculate_RDis("ACARPA",1.48,18.24,27.63,87.60)
calculate_RDis("ACARPB",NA,18.24,27.63,87.60)
calculate_RDis("ACARPC",1.48,18.24,27.63,NA)

#verified using MIL In situ RD estimation (2).xlsx [calculation tab]

calculate_ism <- function (model,im,Ashd=NA,VMdaf=NA,Cdaf=NA,Hdaf){
  #2003 ACARP Model (direct method)
  if (model %in% c("ACARP1")) {(-0.1326*im^2+2.206*im+0.009767*Ashd^2-0.5892*Ashd-0.00237*VMdaf^2+0.03989*VMdaf-0.01328*Cdaf^2+1.648*Cdaf-33.14976698)}
  else
  if (model %in% c("ACARP2")) {(0.008682*Ashd^2-0.4718*Ashd+0.008269*VMdaf^2-0.08879*VMdaf-3.2*Hdaf^2+25.914*Hdaf-0.04682*im^2+1.253*im-45.67052959)}
  else
  if (model %in% c("ACARP3")) {(-0.08315*im^2+2.107*im+0.01174*Ashd^2-0.6261*Ashd-0.00357*VMdaf^2+0.2777*VMdaf+3.777694805)}
}  

calculate_ism("ACARP1",1.3,18.24,27.63,87.6,NA)
calculate_ism("ACARP2",1.3,18.24,27.63,87.6,4.6) 
calculate_ism("ACARP3",1.3,18.24,27.63,NA,NA)

#verified using MIL In situ RD estimation (2).xlsx [calculation tab]

ACARPAparams <- c("RdD","Ashd","VMdaf","Cdaf")
ACARPBparams <- c("Ashd","VMdaf","Cdaf")
ACARPCparams <- c("RdD","Ashd","VMdaf")



names(modelAvals) <- c("Ashd","VMdaf","Cdaf","RDd")

params <- data.frame(modelAparams, modelAvals)

modelBparams <- c("adry","vmdaf","Cdaf","rdad")
modelCparams <- c("adry","vmdaf","Cdaf","rdad")




