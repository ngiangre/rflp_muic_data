#' Download a file from Google Drive and convert to Parquet
#'
#' @param drive_path Character, Google Drive path to file (can include subfolders).
#' @param dest_path Character, local destination path for parquet file.
#' @param sheet If Excel, optional sheet name/number (default: 1).
#' 
#' @return Invisibly returns the parquet file path.
#' @export
#' 
#' @examples
#' download_to_parquet(
#'   drive_path = paste0(
#'     Sys.getenv("MUIC_GDRIVE_PATH"),
#'     "DNA_SR24-58221_C1_neoantigen_class_I_report.xlsx"
#'   ),
#'   dest_path = "inst/data/DNA_SR24-58221_C1_neoantigen_class_I_report.parquet"
#' )
download_to_parquet <- function(drive_path, dest_path, sheet = 1) {
  
  # Temporary file to hold the downloaded version
  tmp <- tempfile(
    fileext = paste0(".", tools::file_ext(drive_path))
  )
  
  # Download from Google Drive
  dl <- googledrive::drive_download(
    file = drive_path,
    path = tmp,
    overwrite = TRUE
  )
  local_file <- dl$local_path
  
  # Detect file type
  ext <- tools::file_ext(local_file)
  
  message("Reading ", ext, " file...")
  df <- switch(
    ext,
    "csv"  = readr::read_csv(local_file),
    "tsv"  = readr::read_tsv(local_file),
    "xlsx" = readxl::read_excel(local_file, sheet = sheet),
    stop("Unsupported file type: ", ext)
  )
  
  # Write to Parquet
  arrow::write_parquet(df, dest_path)
  message("Saved parquet to ", dest_path)
  
  invisible(dest_path)
}
