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
    "Neoantigen/Immunogenomics/DNA_SR24-58221_C1_immunogenomics_report.xlsx"
  ),
  dest_path = "inst/data/DNA_SR24-58221_C1_immunogenomics_report.parquet"
)

download_to_parquet(
  drive_path = paste0(
    Sys.getenv("MUIC_GDRIVE_PATH"),
    "Immune_Infiltrate/RNA_SR24-58221_C1_immune_infiltrate.xlsx"
  ),
  dest_path = "inst/data/RNA_SR24-58221_C1_immune_infiltrate.parquet"
)

download_to_parquet(
  drive_path = paste0(
    Sys.getenv("MUIC_GDRIVE_PATH"),
    "HLA/DNA_2110112624-219-093025_hla.xlsx"
  ),
  dest_path = "inst/data/DNA_2110112624-219-093025_hla.parquet"
)
