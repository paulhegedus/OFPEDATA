#' @title FarmerB_N_sec1east_2019
#' @description Variable rate nitrogen fertilizer polygon data from Farmer B's
#' John Deere sprayer in 2019. Product is 32% UAN, applied as a liquid in
#' gallons per acre. Use a conversion factor of 3.5 gal/acre to get to
#' lbs N/acre. Data is raw experimental data with attributes recorded by
#' Farmer B in sec1east.
#' @format A data frame with 262468 rows and 13 variables:
#' \describe{
#'   \item{\code{Time}}{character, Date and time of observation.}
#'   \item{\code{Heading}}{numeric, The direction travelled.}
#'   \item{\code{DISTANCE}}{numeric, The distance between the observation and the last observation.}
#'   \item{\code{SWATHWIDTH}}{numeric, The width of the swath in feet.}
#'   \item{\code{Product}}{character, The product applied, "32 percent UAN."}
#'   \item{\code{SECTIONID}}{integer, The section of the boom of the observation.}
#'   \item{\code{AppliedRate}}{numeric, The actual rate applied.}
#'   \item{\code{ControlRate}}{numeric, The rate specified by the equipment.}
#'   \item{\code{TargetRate}}{numeric, The rate specified by the application map.}
#'   \item{\code{Elevation}}{numeric, The elevation of the observed point.}
#'   \item{\code{IsoTime}}{character, The International Organization for Standardization time.}
#'   \item{\code{Machine}}{integer, An identifier for the machine.}
#'   \item{\code{geometry}}{geometry, Column containing the spatial coordinate of each observation.}
#'}
#' @details DETAILS
"FarmerB_N_sec1east_2019"
