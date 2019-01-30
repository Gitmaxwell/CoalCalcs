#' @title Calculate in situ moisture (Mis)
#' @description This function directly calculates in situ moisture with option to use one of three alternate models/formula.
#' @param model The character string indicating the in situ moisture calculation formula to use. Must be one of "M1A", "M1B", "M2A". 
#' @param Ashd  Ash \% (dry basis) (required for all models).
#' @param VMdaf Volatile Matter \% (dry ash free basis).
#' @param Cdaf Carbon from Ultimates \% (dry ash free basis).
#' @param Mad Moisture \% (air dried)
#' @param Hdaf Hydrogen \% (dry ash free)
#' @param MHC Moisture Holding Capacity \% for higher rank coals (AS1038.17-2000)
#' @param EM Equilibrium Moisture \% 
#' @param Codmmf Carbon, organic (dry, mineral matter-free)
#' @param Lipmmf Liptinite (mineral matter-free)
#' @details 
#' Valid model text strings include any of:
#' 
#' 'M1A', 'M1B', 'M2A'
#' 
#'Model "M1A" is taken from ACARP report C0041 (eq 5.1). It requires Equilibrium Moisture as the only argument and is derived by the formula: 
#'  
#' \deqn{1.117*EM+0.317}
#'  
#'  
#' Model "M1B" is taken from ACARP report C0041 (eq 5.9). It requires Moisture Holding Capacity, Organic Carbon (dmmf) and Liptinite (mmf) as arguments and is derived by the forumla:
#'  
#' \deqn{1.2283*MHC+12.5334*Codmmf*-0.0742*Codmmf^2-0.9855*Lipmmf+0.0426*Lipmmf^2-526.56}
#'  
#' @export
#' @examples 
#' calculate_Mis("M1A",EM=5)
#' 
#' @references
#' "Blah"


calculate_Mis <- function (model,Ashd=NA,VMdaf=NA,Cdaf=NA,Mad=NA,Hdaf=NA,MHC=NA,EM=NA,Codmmf=NA,Lipmmf=NA){
  #2003 ACARP Model (direct method)
  if (!(model %in% c("M1A","M1B", "M2A"))) {"Not a valid model. Please use one of M1A, M1B or M2A"}
  else
  if (model %in% c("M1A")) {(1.117*EM+0.317)}
  else
    if (model %in% c("M1B")) {(1.2283*MHC+12.5334*Codmmf*-0.0742*Codmmf^2-0.9855*Lipmmf+0.0426*Lipmmf^2-526.56)}
  else
    if (model %in% c("M2A")) {(8.682*10^-3)*Ashd^2-(4.718*10^-1)*Ashd+(8.269*10^-3)*VMdaf^2-(8.879*10^2)*VMdaf-3.200*Hdaf^2+25.914*Hdaf-(4.682*10-2)*Mad^2+1.253*Mad-45.67}
}  



