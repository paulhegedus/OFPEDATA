#' @title FarmerB_N_sec35middle_2018
#' @description Variable rate nitrogen fertilizer point data from Farmer B's
#' John Deere sprayer in 2018. Product is 32% UAN, applied as a liquid in
#' gallons per acre, however data is already in pounds of nitrogen per acre.
#' Data is raw experimental data with attributes recorded by Farmer B in
#' sec35middle.
#' @format A data frame with 259042 rows and 9 variables:
#' \describe{
#'   \item{\code{field}}{character Field name.}
#'   \item{\code{x}}{double UTM Zone 12 longitude in meters.}
#'   \item{\code{y}}{double UTM Zone 12 latitude in meters.}
#'   \item{\code{date}}{integer Date of application.}
#'   \item{\code{vrrtppl}}{double As-applied variable rate (lbs N/ac).}
#'   \item{\code{dist}}{double Distance between application point.}
#'   \item{\code{year}}{character Application year.}
#'   \item{\code{orig_file}}{character Original file name of shapefile.}
#'   \item{\code{geometry}}{list Coordinates of application points.}
#'}
#' @details DETAILS
"FarmerB_N_sec35middle_2018"
