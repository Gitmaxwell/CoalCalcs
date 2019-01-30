#' @title Calculate Mineral Matter
#' @description This function provides a varitey of models to predict mineral matter (mmd)
#' @param model The character string indicating the mineral matter calculation formula to use. Valid model text strings are any one of "parr","KMC","choud"
#' @param Ashd Ash \% (dry)
#' @param Stot Total Sulphur \% (dry)
#' @param Sash Sulphur in coal Ash
#' @param Spyr Pyritic Sulfur in coal
#' @param Ssul Sulfate Sulfur in coal
#' @param Cl Total chlorine in coal
#' @param CO2 Mineral carbon dioxide yield from coal
#' @details 
#' 
#' 
#' Model "parr" is termed the Parr formula originally reported in Rees (1966). It is derived by:
#' 
#' \deqn{1.08*Ashd+0.55*Stot} 
#' 
#' Model KMC is termed the King-Maries-Crossley reported in King et al (1963). It is derived by: 
#' 
#' \deqn{1.13*Ashd+0.5*Spyr + 0.8*CO2+2.85*Ssul-2.7*Sash + 0.5*Cl} 
#' 
#' Model "choud" is termed the Choudhury and Ganguly formula originally reported in Choudhury and Ganguly (1978). It is derived by:
#' 
#' \deqn{1.1*Ashd+0.7*CO2} 
#'  
#' @export
#' @examples 
#' calculate_mmd("parr", Ashd = 12.5, Stot = 5)
#' @references
#' Choudhury, S.S., Ganguly, P.C., 1978. Effects of carbonate minerals on volatile matter of coals. Fuel 57.
#' 
#' King, J.G., Maries, M.B., Crossley, H.E., 1936. Formulas for the calculation of coal analysis to a basis of coal substance free of mineral matter. J. Soc. Chem. Ind. 55.
#' 
#' Rees, O.W., 1966. Chemistry, uses and limitations of coal analyses. Report of Investigations 220. Illinois State Geological Survey (55 pp.).
#' 

 
calculate_mmd <- function (model,Ashd=NA,Stot=NA,Sash=NA,Spyr=NA, Ssul=NA, Cl=NA, CO2=NA ){
if (!(model %in% c("parr","KMC", "choud"))) {"Not a valid model. Please use one of parr, KMC, choud"}
else
  if (model %in% c("parr")) {(1.08*Ashd+0.55*Stot)}
else
  if (model %in% c("KMC")) {(1.13*Ashd+0.5*Spyr + 0.8*CO2+2.85*Ssul-2.7*Sash + 0.5*Cl)}
else
  if (model %in% c("choud")) {1.1*Ashd+0.7*CO2}
} 