#' @title FarmerB_yld_sec1west_2014
#' @description Winter wheat crop yield (bushels per acre) data
#' collected from Farmer B's Case combine in 2014. Yield
#' data is automatically collected ~3 seconds during harvest.
#' Data is raw yield data with attributes recorded by
#' Farmer B in the field named sec1west.
#' @format A data frame with 47872 rows and 20 variables:
#' \describe{
#'   \item{\code{field}}{character Field name.}
#'   \item{\code{year}}{integer Harvest year.}
#'   \item{\code{utm_x}}{double UTM Zone 12 longitude in meters.}
#'   \item{\code{utm_y}}{double UTM Zone 12 latitude in meters.}
#'   \item{\code{lat}}{double Latitude in decimal degrees.}
#'   \item{\code{lon}}{double Longitude in decimal degrees.}
#'   \item{\code{yield}}{double Crop yield in bushels per acre.}
#'   \item{\code{moistur}}{double Crop moisture content (%).}
#'   \item{\code{swth_w_}}{integer Swath width.}
#'   \item{\code{dist_in}}{integer Distance between observations, in inches.}
#'   \item{\code{flw_lbs}}{double Weight of flow through combine.}
#'   \item{\code{pass_nm}}{integer Number of the pass trhough the field.}
#'   \item{\code{gps_tim}}{double Time recorded from the GPS.}
#'   \item{\code{utm_zon}}{integer UTM zone.}
#'   \item{\code{rm_code}}{integer Unknown code.}
#'   \item{\code{crop}}{character Crop harvested.}
#'   \item{\code{hdng_dg}}{double Direction or bearing.}
#'   \item{\code{z_metrs}}{double Height in meters.}
#'   \item{\code{id}}{integer Observation ID.}
#'   \item{\code{geometry}}{list Coordinates of harvest points.}
#'}
#' @details DETAILS
"FarmerB_yld_sec1west_2014"
