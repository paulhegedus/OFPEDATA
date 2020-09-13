#' unzipShapefiles
#'
#' Unzips compressed files containing ESRI shapefiles from the
#' 'data-raw' folder of the OFPEDATA package. Takes a zipped file
#' name and path to data and checks if there are any shapefiles
#' in the zipped object and if so, returns a 'sf' object.
#'
#' @param path Character, path to the folder with the data.
#' @param zip_file Character, the name of the zipped file to
#' extract.
#'
#' @return A shapefile of class 'sf'.
#'
#' @importFrom magrittr %>%
#'
#' @examples
#' \dontrun{
#' unzipShapefiles("zipped_data_filename", "path/to/data")
#' }
#'
#' @export
unzipShapefiles <- function(zip_file, path) {
  temp <- tempfile()
  utils::unzip(paste0(path, zip_file), exdir = temp)
  temp_files <- list.files(temp, full.names = TRUE)
  temp_shp_name <- temp_files[grep(".shp", temp_files)]
  unzipped <- sf::read_sf(temp_shp_name) %>%
    sf::st_zm()
  return(unzipped)
}

