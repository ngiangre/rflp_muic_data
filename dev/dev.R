library(googledrive)

#drive_auth()

drive_download(
  file = paste0(
    "Symphony_0312_2025_PSNLDx_20250122_120844_DRF_Signed_77471/",
    "SR24-58221_C1/Neoantigen/Neoantigen/",
    "DNA_SR24-58221_C1_neoantigen_class_I_report.xlsx"
  ),
  path = "data/DNA_SR24-58221_C1_neoantigen_class_I_report.xlsx"
)

readxl::read_excel("inst/data/DNA_SR24-58221_C1_neoantigen_class_I_report.xlsx")
