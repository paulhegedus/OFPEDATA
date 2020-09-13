#' @title FarmerB_yld_sec1west_2016
#' @description Winter wheat crop yield (bushels per acre) data
#' collected from Farmer B's Case combine in 2016. Yield
#' data is automatically collected ~3 seconds during harvest.
#' Data is raw yield data with attributes recorded by
#' Farmer B in the field named sec1west.
#' @format A data frame with 611743 rows and 14 variables:
#' \describe{
#'   \item{\code{gid}}{integer, Unique integer ID for each observation.}
#'   \item{\code{distance}}{numeric, The distance between the observation and the last observation.}
#'   \item{\code{swathwidth}}{numeric, The width of the swath in feet.}
#'   \item{\code{vryieldvol}}{numeric, The volume of the yield gathered.}
#'   \item{\code{sectionid}}{integer, The section of the boom of the observation.}
#'   \item{\code{crop}}{character, Crop harvested.}
#'   \item{\code{wetmass}}{numeric, Mass of the wet crop.}
#'   \item{\code{moisture}}{numeric, Crop moisture content (%).}
#'   \item{\code{time}}{character, Date and time of observation.}
#'   \item{\code{heading}}{numeric, The direction travelled.}
#'   \item{\code{variety}}{character, The variety of the crop grown.}
#'   \item{\code{elevation}}{numeric, The elevation of the observed point.}
#'   \item{\code{isotime}}{character, The International Organization for Standardization time.}
#'   \item{\code{geometry}}{geometry, Column containing the spatial coordinate of each observation.}
#'}
#' @details DETAILS
"FarmerB_yld_sec1west_2016"
