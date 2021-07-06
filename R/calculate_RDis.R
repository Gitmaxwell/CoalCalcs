#' @title Calculate insitu relative density (RDis)
#' @description This function directly calculates insitu density with option to use one of seven alternate models/formula.
#' @param model The character string indicating the insitu density calculation formula to use.
#' @param Ashd  Ash % (dry basis) (required for all models).
#' @param RDd  Relative density (dry basis). 
#' @param VMdaf Volatile Matter % (dry ash free basis). 
#' @param Cdaf Carbon % (dry ash free basis).
#' @details 
#' Valid model text strings include any of:
#' 
#' 'ACARPA', 'ACARPB', 'ACARPC', 'smitha', 'smithb', 'smithc', 'smithd'
#' 
#' Seven alternate models/formula are supported.
#' 
#' __ACARP Models__
#'  
#'  "ACARPA" requires all arguments and is derived by the forumla:
#'  
#'  \deqn{-0.000003953*Ashd^2+0.006924*Ashd+0.000097*VMdaf^2-0.01246*VMdaf-0.0006518*Cdaf^2+0.09801*Cdaf+0.5144*RDd^2-1.404*RDd-1.104}
#'  
#'  "ACARPB" requires all arguments except RDd and is derived by the forumla:
#'  
#'  \deqn{0.00002582*Ashd^2+0.006251*Ashd+0.00008608*VMdaf^2-0.0132*VMdaf-0.0006447*Cdaf^2+0.09253*Cdaf-1.602}
#'  
#'  "ACARPC" requires all arguments except Cdaf and is derived by the forumla:
#'  
#'  \deqn{0.5079*RDd+0.00447*Ashd-0.001783*VMdaf+0.6291}
#'  
#'
#'
#'  
#' __Simth Models__
#' Gant Smith (1991) proposed (1991) a series of equations to estimate insitu relative densities of different rank coal. His study was based on laboratory test results of Alberta coals. To estimate insitu relative density of coal he assumed:
#'  
#' * Coal is composed of coal matrix (ash-free material), ash and water
#' 
#' * Density of coal on a dry-mineral-matter-free is a function of coal rank
#' 
#' * Average of 2.9 g/cc of ash density
#' 
#' * Average bed moisture or insitu moisture of coal matrix are:
#'  
#'    * 1% for Low and medium volatile bituminous coal
#'  
#'    * 7% for High volatile bituminous coal
#'  
#'    * 20% for sub-bituminous coal
#'  
#'    * 30% for lignite
#'  
#' Given these assumptions he derived a series of equations to estimate insitu releative density for primary coal ranks. These equations are:
#'
#' Low and medium volatile bituminous coal:
#' \deqn{insitu relative density=100/(75.4-0.402* Ashd)}
#'
#' High volatile bituminous coal:
#' \deqn{insitu relative density=100/(76.9-0.417* Ashd)}
#'
#' Subbituminous coal:
#' \deqn{insitu relative density=100/(80.1-0.451* Ashd)}
#' 
#' \deqn{RD_{is}=\\frac{100}{(80.1-0.451\\cdot Ash_{d})}}
#'
#' Lignite:
#' \deqn{insitu relative density=100/(82.6-0.476* Ashd)}
#' @md


#' @export
#' @examples 
#' calculate_RDis("ACARPA",1.48,18.24,27.63,87.60)
#' 
#' calculate_RDis("ACARPB",NA,18.24,27.63,87.60)
#' 
#' calculate_RDis("ACARPC",1.48,18.24,27.63,NA)
#' 
#' calculate_RDis("smitha",NA,18.24,NA,NA)
#' 
#' calculate_RDis("smithb",NA,18.24,NA,NA)
#' 
#' calculate_RDis("smithc",NA,18.24,NA,NA)
#' 
#' calculate_RDis("smithd",NA,18.24,NA,NA)

calculate_RDis <- function (model,RDd=NA,Ashd=NA,VMdaf=NA,Cdaf=NA){
  #2003 ACARP Model (direct method)
  if (model %in% c("ACARPA")) {(-0.000003953*Ashd^2+0.006924*Ashd+0.000097*VMdaf^2-0.01246*VMdaf-0.0006518*Cdaf^2+0.09801*Cdaf+0.5144*RDd^2-1.404*RDd-1.104)}
  else
    if (model %in% c("ACARPB")) {(0.00002582*Ashd^2+0.006251*Ashd+0.00008608*VMdaf^2-0.0132*VMdaf-0.0006447*Cdaf^2+0.09253*Cdaf-1.602)}
  else
    if (model %in% c("ACARPC")) {(0.5079*RDd+0.00447*Ashd-0.001783*VMdaf+0.6291)}
  else
    if (model %in% c("smitha")) {(100/(75.4-0.402*Ashd))} 
  else
    if (model %in% c("smithb")) {(100/(76.9-0.417*Ashd))} 
  else
    if (model %in% c("smithc")) {(100/(80.1-0.451*Ashd))} 
  else
    if (model %in% c("smithd")) {(100/(82.6-0.476*Ashd))} 
}  

