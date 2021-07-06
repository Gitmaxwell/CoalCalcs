#' Coal proximate analysis data (long)
#'
#' Coal proximate analysis data from Mavis Downs Coal deposit, Bowen Basin QLD, Australia.
#' Reformated into long format
#'
#' @docType data
#'
#' @usage data(prox_long)
#'
#' @format A data frame
#' \describe{
#'   \item{Borehole_Name}{Unique identifier of the borehole locaiton}
#'   \item{Sample_No}{Unique sample identifier}
#'   \item{Seam}{Seam or ply code}
#'   \item{variable}{The name of the proximate analysis test}
#'   \item{value}{The value of the variable}
#'   ...
#' }
#'
#' @keywords datasets
#'
#' @references Peabody Energy Australia, 2011. MDL 136, Mavis Downs, Final Report for Period Ending 9/12/2011.
#' (\href{https://gsq-prod-ckan-horizon-public.s3-ap-southeast-2.amazonaws.com/Report/58068/Document/623318/cr_58068_1.pdf}{GSQ open reports})
#'
#' @source \href{https://gsq-prod-ckan-horizon-public.s3-ap-southeast-2.amazonaws.com/Report/73851/Document/639561/cr_73851_15.txt}{GSQ open reports}
#'
#' @examples
#' data(prox_long)
"prox_long"
