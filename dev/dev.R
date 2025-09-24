library(googledrive)

#drive_auth()

drive_download(
  file = paste0(
    Sys.getenv("MUIC_GDRIVE_PATH"),
    "DNA_SR24-58221_C1_neoantigen_class_I_report.xlsx"
  ),
  path = "data/DNA_SR24-58221_C1_neoantigen_class_I_report.xlsx"
)

readxl::read_excel("inst/data/DNA_SR24-58221_C1_neoantigen_class_I_report.xlsx")
