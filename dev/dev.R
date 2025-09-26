library(googledrive)

#drive_auth()

download_to_parquet(
  drive_path = paste0(
    Sys.getenv("MUIC_GDRIVE_PATH"),
    "DNA_SR24-58221_C1_neoantigen_class_I_report.xlsx"
  ),
  dest_path = "inst/data/DNA_SR24-58221_C1_neoantigen_class_I_report.parquet"
)

download_to_parquet(
  drive_path = paste0(
    Sys.getenv("MUIC_GDRIVE_PATH"),
    "Neoantigen/Neoantigen/DNA_SR24-58221_C1_neoantigen_class_II_report.xlsx"
  ),
  dest_path = "inst/data/DNA_SR24-58221_C1_neoantigen_class_II_report.parquet"
)

download_to_parquet(
  drive_path = paste0(
    Sys.getenv("MUIC_GDRIVE_PATH"),
    "Neoantigen/Neoantigen/tsv/DNA_SR24-58221_C1_neoantigen_class_II_report_Fusion.tsv"
  ),
  dest_path = "inst/data/DNA_SR24-58221_C1_neoantigen_class_II_report_Fusion.parquet"
)