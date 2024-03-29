% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate_mmd.R
\name{calculate_mmd}
\alias{calculate_mmd}
\title{Calculate Mineral Matter}
\usage{
calculate_mmd(
  model,
  Ashd = NA,
  Stot = NA,
  Sash = NA,
  Spyr = NA,
  Ssul = NA,
  Cl = NA,
  CO2 = NA
)
}
\arguments{
\item{model}{The character string indicating the mineral matter calculation formula to use. Valid model text strings are any one of "parr","KMC","choud"}

\item{Ashd}{Ash \% (dry)}

\item{Stot}{Total Sulfur \% (dry)}

\item{Sash}{Sulfur in coal Ash}

\item{Spyr}{Pyritic Sulfur in coal}

\item{Ssul}{Sulfate Sulfur in coal}

\item{Cl}{Total chlorine in coal}

\item{CO2}{Mineral carbon dioxide yield from coal}
}
\description{
This function provides a variety of models to predict mineral matter (mmd)
}
\details{
Model "parr" is termed the Parr formula originally reported in Rees (1966). It is derived by:

\deqn{1.08*Ashd+0.55*Stot}

Model KMC is termed the King-Maries-Crossley reported in King et al (1963). It is derived by:

\deqn{1.13*Ashd+0.5*Spyr + 0.8*CO2+2.85*Ssul-2.7*Sash + 0.5*Cl}

Model "choud" is termed the Choudhury and Ganguly formula originally reported in Choudhury and Ganguly (1978). It is derived by:

\deqn{1.1*Ashd+0.7*CO2}
}
\examples{
calculate_mmd("parr", Ashd = 12.5, Stot = 5)
}
\references{
Choudhury, S.S., Ganguly, P.C., 1978. Effects of carbonate minerals on volatile matter of coals. Fuel 57.

King, J.G., Maries, M.B., Crossley, H.E., 1936. Formulas for the calculation of coal analysis to a basis of coal substance free of mineral matter. J. Soc. Chem. Ind. 55.

Rees, O.W., 1966. Chemistry, uses and limitations of coal analyses. Report of Investigations 220. Illinois State Geological Survey (55 pp.).
}
