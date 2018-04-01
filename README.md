About CoalCalcs
---------------

'CoalCals' is an R package for converting or calculating bases and units of measure of coal analyses including:

-   conversion of coal analyses moisture basis (from/to: as received, air dried, dry)

-   conversion of coal analyses basis to ash free or dry mineral matter free

-   conversion of relative density (air dried) basis to intitu basis with option to use Prestons Sanders or Smith formulas

-   calculation of relative density insitu basis using ACARP direct method formulas

-   calculation of insitu moisture using formulas derived from ACARP project C10042

-   conversions to report Hydrogen including or excluding H in moisture

-   calculation of gross Gross Calorific Value using Ultimate Analysis

-   net calorific value calculations and conversions with options to use ASTM, IS or Seyler's formulas

While various online coal bases (usually simple energy or moisture conversion) calculators exist, and formulas are well documented no scripting package (such as R or Python) exists which demonstrates or enables the use of these conversions/calculations in one place. For those persons in the coal industry who are beginning to or have integrated R into their workflow/s this package should provide a valuable tool to facilitate rapid coal analyses validation, and conversion.

Conversion of coal analyses moisture basis
------------------------------------------

Most common coal analyses conversions are moisture bases conversions. These conversions allow to investigation of coal constitutes (usually the results of a proximate analysis) with or without air dried and free moisture. Investigating different coals at a common basis (usually without moisture or mineral matter) allows for ease of comparision. CoalCals moisture bases conveersions are conviniently wrapped up in a single function

"ACARPA" requires all arguments and is derived by the forumla:

−0.000003953*A**s**h**d*<sup>2</sup> + 0.006924 \* *A**s**h**d* + 0.000097 \* *V**M**d**a**f*<sup>2</sup> − 0.01246 \* *V**M**d**a**f* − 0.0006518 \* *C**d**a**f*<sup>2</sup> + 0.09801 \* *C**d**a**f* + 0.5144 \* *R**D**d*<sup>2</sup> − 1.404 \* *R**D**d* − 1.104
−0.395310 × 10<sup>−7</sup> \* *A**s**h**d*<sup>2</sup> + 0.006924 \* *A**s**h**d* + 0.000097 \* *V**M**d**a**f*<sup>2</sup> − 0.01246 \* *V**M**d**a**f* − 0.0006518 \* *C**d**a**f*<sup>2</sup> + 0.09801 \* *C**d**a**f* + 0.5144 \* *R**D**d*<sup>2</sup> − 1.404 \* *R**D**d* − 1.104

Example workflows
-----------------

*Y* = *X**β* + *ϵ*
