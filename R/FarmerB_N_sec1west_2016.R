#' @title FarmerB_N_sec1west_2016
#' @description Variable rate nitrogen fertilizer polygon data from Farmer B's
#' John Deere sprayer in 2016. Product is 32% UAN, applied as a liquid in
#' gallons per acre. Use a conversion factor of 3.5 gal/acre to get to
#' lbs N/acre. Data is raw experimental data with attributes recorded by
#' Farmer B in sec1west.
#' @format A data frame with 6069 rows and 7 variables:
#' \describe{
#'   \item{\code{id}}{integer ID integer for each data point.}
#'   \item{\code{field_name}}{character Field name.}
#'   \item{\code{vrappratev}}{double As-applied variable rate (gal/ac).}
#'   \item{\code{time}}{character Time of application.}
#'   \item{\code{latitude}}{character Latitude in decimal degrees.}
#'   \item{\code{longitude}}{character Longitude in decimal degrees.}
#'   \item{\code{geometry}}{list Coordinates of application polygons.}
#'}
#' @details DETAILS
"FarmerB_N_sec1west_2016"
