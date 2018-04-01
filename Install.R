library(devtools)
library(roxygen2)


setwd("L:/Coal_Quality/R LIBRARY/Packages/CoalCalcs")
document()
setwd("L:/Coal_Quality/R LIBRARY/Packages")
devtools::build_vignettes("CoalCalcs")
#devtools::use_data(example_las_obj,lastools)
devtools::install("CoalCalcs",build_vingettes = TRUE)
library(CoalCalcs)

install.packages("bookdown")
library(bookdown)


#output: 
#  rmarkdown::html_vignette:
#  toc: true
#number_sections: false
#toc_depth: 5


library(CoalCalcs)

CoalCalcs::convert_bases(13.5,"adtonm",4,NA,5,NA)

Ashad <- c(12,13.5,6)
fromto <- c("adtonm","adtonm","adtonm")
im <- c(2,2.5,3)
tm <- c(NA,NA,NA)
nm <- c(4,5,6)
Ashd <- c(NA,NA,NA)

cb <- data.frame(Ashad,fromto,im,tm,nm,Ashd)

#example conversion across a data frame
mapply(CoalCalcs::convert_bases,cb$Ashad,cb$fromto,cb$im,cb$tm,cb$nm,cb$Ashd)

#adding to dataframe
cb$calculated_ash_at_nm <- mapply(CoalCalcs::convert_bases,cb$Ashad,cb$fromto,cb$im,cb$tm,cb$nm,cb$Ashd)
