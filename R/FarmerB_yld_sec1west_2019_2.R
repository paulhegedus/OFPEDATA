#' @title FarmerB_yld_sec1west_2019_2
#' @description Winter wheat crop yield (bushels per acre) data
#' collected from Farmer B's Case combine in 2019. Yield
#' data is automatically collected ~3 seconds during harvest.
#' Data is raw yield data with attributes recorded by
#' Farmer B in the field named sec1west.
#' @format A data frame with 470477 rows and 14 variables:
#' \describe{
#'   \item{\code{DISTANCE}}{numeric, The distance between the observation and the last observation.}
#'   \item{\code{SWATHWIDTH}}{numeric, The width of the swath in feet.}
#'   \item{\code{VRYIELDVOL}}{numeric, The volume of the yield gathered.}
#'   \item{\code{SECTIONID}}{integer, The section of the boom of the observation.}
#'   \item{\code{Crop}}{character, Crop harvested.}
#'   \item{\code{WetMass}}{numeric, Mass of the wet crop.}
#'   \item{\code{Moisture}}{numeric, Crop moisture content (%).}
#'   \item{\code{Time}}{character, Date and time of observation.}
#'   \item{\code{Heading}}{numeric, The direction travelled.}
#'   \item{\code{VARIETY}}{character, The variety of the crop grown.}
#'   \item{\code{Elevation}}{numeric, The elevation of the observed point.}
#'   \item{\code{IsoTime}}{character, The International Organization for Standardization time.}
#'   \item{\code{Machine}}{integer, An identifier for the machine.}
#'   \item{\code{geometry}}{geometry, Column containing the spatial coordinate of each observation.}
#'}
#' @details DETAILS
"FarmerB_yld_sec1west_2019_2"
