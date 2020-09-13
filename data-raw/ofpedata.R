## OFPEDATA Preparation
devtools::load_all()

raw_files <- list.files("data-raw")
zip_files <- raw_files[grep(".zip", raw_files)]

# unzip shapefiles
unzip_list <- as.list(zip_files) %>%
  `names<-`(gsub(".zip", "", zip_files)) %>%
  lapply(unzipShapefiles, path = "data-raw/")

# get protein data
FarmerB_pro_sec35middle_2016 <- data.table::fread("data-raw/FarmerB_PRO_PRO_2016_sec35middle.csv")
FarmerB_pro_sec35middle_2018 <- data.table::fread("data-raw/FarmerB_PRO_PRO_2018_sec35middle.csv")
FarmerI_pro_henrys_2016 <- data.table::fread("data-raw/FarmerI_PRO_PRO_2016_henrys.csv")
FarmerI_pro_henrys_2018 <- data.table::fread("data-raw/FarmerI_PRO_PRO_2018_henrys.csv")
FarmerB_pro_sec1west_2016 <- unzip_list$FarmerB_PRO_PRO_2016_sec1west
FarmerB_pro_sec1east_2017 <- unzip_list$FarmerB_PRO_PRO_2017_sec1east
FarmerB_pro_sec1west_2019 <- data.table::fread("data-raw/SEC 1 WEST_SN1228_2019.csv")
FarmerB_pro_sec1east_2019 <- data.table::fread("data-raw/SEC 1 EAST_SN1228_2019.csv")

# get yield data
FarmerB_yld_sec35middle_2016 <- unzip_list$FarmerB_YL_YLD_2016_FarmerBFarmsInFarmerBFamilyLLCsec35middleWheatHrdRdWtr
FarmerB_yld_sec35middle_2018 <- unzip_list$FarmerB_YL_YLD_2018_FarmerBFarmsIncFarmerBFamilyLLCsec35middleWheatHrdRdWtrDeere
FarmerB_yld_sec1east_2017 <- unzip_list$FarmerB_YE_YLD_2017_sec1east
FarmerB_yld_sec1east_2019 <- unzip_list$`FarmerB Farms Inc.-FarmerB Family LLC-sec 1 east-Wheat (Hrd Rd Wtr)`
FarmerB_yld_sec1west_2016 <- unzip_list$FarmerB_YL_YLD_2016_FarmerBFarmsInFarmerBFamilyLLCsec1westWheatHrdRdWtr
FarmerB_yld_sec1west_2019_1 <- unzip_list$`FarmerB Farms Inc.-FarmerB Family LLC-sec 1 west-Wheat (Hrd Rd Wtr)`
FarmerB_yld_sec1west_2019_2 <- unzip_list$`FarmerB Farms Inc.-FarmerB Family LLC-sec 1 west-Wheat (Hrd Rd Wtr)-1`
FarmerC_yld_millview_2017 <- unzip_list$`FarmerC Hill Farms-FarmerC Hill Farms-Millview-Oats`
FarmerC_yld_millview_2019 <- unzip_list$`FarmerC Hill Farms-FarmerC Hill Farms-Millview-Wheat (Hrd Rd Spr) Yield`
FarmerI_yld_henrys_2016 <- unzip_list$FarmerI_YE_YLD_2016_henrys
FarmerI_yld_henrys_2018 <- unzip_list$FarmerI_YL18_YLD_2018_henrys

# get as-applied input data
FarmerB_N_sec35middle_2016 <- unzip_list$FarmerB_AA1617_POLY_AA_N_sec35middle
FarmerB_N_sec35middle_2018 <- unzip_list$FarmerB_sec35mid_2018_AA_N
FarmerB_N_sec1east_2017 <- unzip_list$FarmerB_AA1617_POLY_AA_N_2017_sec1east
FarmerB_N_sec1east_2019 <- unzip_list$`FarmerB Farms Inc.-FarmerB Family LLC-sec 1 east-32 percent UAN`
FarmerB_N_sec1west_2016 <- unzip_list$FarmerB_AA1617_2016_POLY_AA_N_sec1west
FarmerB_N_sec1west_2019 <- unzip_list$`FarmerB Farms Inc.-FarmerB Family LLC-sec 1 west-32 percent UAN`
FarmerC_SR_millview_2019 <- unzip_list$`FarmerC Hill Farms-FarmerC Hill Farms-Millview-Wheat (Hrd Rd Spr) seeding`
FarmerI_N_henrys_2016 <- unzip_list$FarmerI_AA16_AA_N_2016_henrys
FarmerI_N_henrys_2018 <- unzip_list$FarmerI_henrys_2018_AA_N

# get farm bboxes
FarmerB_FarmName_bbox <- unzip_list$FarmerB_FarmName_bbox
FarmerC_FarmName_bbox <- unzip_list$FarmerC_FarmName_bbox
FarmerI_FarmName_bbox <- unzip_list$FarmerI_FarmName_bbox

# get field boundaries
sec35middle_bbox <- unzip_list$sec35mid_bbox
millview_bbox <- unzip_list$millview_bbox
henrys_bbox <- unzip_list$henrys_bbox

# export
usethis::use_data(FarmerB_N_sec35middle_2016,
                  FarmerB_N_sec35middle_2018,
                  FarmerB_N_sec1east_2017,
                  FarmerB_N_sec1east_2019,
                  FarmerB_N_sec1west_2016,
                  FarmerB_N_sec1west_2019,
                  FarmerB_pro_sec1west_2016,
                  FarmerB_pro_sec1east_2017,
                  FarmerB_pro_sec1west_2019,
                  FarmerB_pro_sec1east_2019,
                  FarmerB_yld_sec1east_2017,
                  FarmerB_yld_sec1east_2019,
                  FarmerB_yld_sec1west_2016,
                  FarmerB_yld_sec1west_2019_1,
                  FarmerB_yld_sec1west_2019_2,
                  FarmerB_pro_sec35middle_2016,
                  FarmerB_pro_sec35middle_2018,
                  FarmerB_yld_sec35middle_2016,
                  FarmerB_yld_sec35middle_2018,
                  FarmerC_SR_millview_2019,
                  FarmerC_yld_millview_2017,
                  FarmerC_yld_millview_2019,
                  FarmerI_N_henrys_2016,
                  FarmerI_N_henrys_2018,
                  FarmerI_pro_henrys_2016,
                  FarmerI_pro_henrys_2018,
                  FarmerI_yld_henrys_2016,
                  FarmerI_yld_henrys_2018,
                  FarmerB_FarmName_bbox,
                  FarmerC_FarmName_bbox,
                  FarmerI_FarmName_bbox,
                  sec35middle_bbox,
                  millview_bbox,
                  henrys_bbox,
                  overwrite = TRUE)
