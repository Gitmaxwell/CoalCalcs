\#\#About CoalCalcs

‘CoalCalcs’ is an R package for converting or calculating bases and
units of measure of coal analyses including:

-   conversion of coal analyses moisture basis (from/to: as received,
    air dried, dry)

-   conversion of coal analyses basis to ash free or dry mineral matter
    free

-   conversion of relative density (air dried) basis to intitu basis or
    dry basis using Prestons Sanders formulas

Further it provides functionality for the direct calculation of insitu
moisture and density using methods:

-   derived from ACARP project C10041 and ACRAP

-   Simth

-   calculation of relative density insitu basis using ACARP direct
    method formulas

-   calculation of insitu moisture using formulas derived from ACARP
    project C10042

-   conversions to report Hydrogen including or excluding H in moisture

-   calculation of gross Gross Calorific Value using Ultimate Analysis

-   net calorific value calculations and conversions with options to use
    ASTM, IS or Seyler’s formulas

While various online coal bases calculators exist and formulas are well
documented, no scripting package (such as R or Python) exists which
demonstrates or enables the use of these conversions/calculations in one
place. For those persons in the coal industry who have integrated R into
their workflow/s this package should provide a valuable tool to
facilitate rapid coal analyses validation, and conversion.

## Installation

CoalCalcs can be installed from github repository using devtools:

devtools::install_github(“Gitmaxwell/CoalCalcs”)
