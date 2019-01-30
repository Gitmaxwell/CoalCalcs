## ---- echo=FALSE, eval=FALSE---------------------------------------------
#  library(knitr)
#  library(rmarkdown)
#  library(bookdown)
#  

## ---- eval=FALSE---------------------------------------------------------
#  CoalCalcs::convert_bases(12,"adtodry",im=4)

## ----eval=FALSE----------------------------------------------------------
#  CoalCalcs::convert_bases(12,"drytoad",im=4)

## ---- eval=FALSE---------------------------------------------------------
#  CoalCalcs::convert_bases(12,"adtoar",im=4,tm=8)

## ---- eval=FALSE---------------------------------------------------------
#  CoalCalcs::convert_bases(12,"adtonm",im=4,nm=6)

## ---- eval=FALSE---------------------------------------------------------
#  CoalCalcs::convert_bases(12,"artoad",im=4,tm=6)

## ---- eval=FALSE---------------------------------------------------------
#  CoalCalcs::convert_bases(12,"drytodaf",Ashd=8)

## ---- eval=FALSE---------------------------------------------------------
#  CoalCalcs::convert_RDadtoRDis(RDad = 1.4, Mad=3.4, Mis=5.2)

## ------------------------------------------------------------------------
CoalCalcs::calculate_RDis("smitha",Ashd=18.24)


## ------------------------------------------------------------------------
CoalCalcs::calculate_RDis("smithb",Ashd=18.24)


## ------------------------------------------------------------------------
CoalCalcs::calculate_RDis("smithc",Ashd=18.24)


## ------------------------------------------------------------------------
CoalCalcs::calculate_RDis("smithd",Ashd=18.24)


## ------------------------------------------------------------------------
CoalCalcs::calculate_RDis("ACARPA",RDd = 1.48, Ashd = 18.24, VMdaf = 27.63, Cdaf = 87.60)

## ------------------------------------------------------------------------
CoalCalcs::calculate_RDis("ACARPB",Ashd = 18.24, VMdaf = 27.63, Cdaf = 87.60)

## ------------------------------------------------------------------------
CoalCalcs::calculate_RDis("ACARPC",RDd = 1.48,Ashd = 18.24, VMdaf = 27.63)

## ------------------------------------------------------------------------
CoalCalcs::calculate_Mis("blah")

CoalCalcs::calculate_Mis("M1A", EM=5)


## ------------------------------------------------------------------------
CoalCalcs::calculate_mmd("parr",Ashd = 12.5, Stot = 5)

## ------------------------------------------------------------------------




