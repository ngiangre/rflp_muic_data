arrow::read_parquet(
  "inst/data/DNA_SR24-58221_C1_neoantigen_class_I_report.parquet"
) |> 
  dplyr::filter(
    .data[['# of Presenting HLA alleles (per peptide)']]>0,
    .data[['Expressed']]=="Y",
    .data[['Immunogenicity Score']]>0
  ) |> 
  dplyr::summarise(
    Npeptides = dplyr::n_distinct(.data[['Peptide']]),
    Avg_SHERPA = mean(.data[['SHERPA Presentation Rank']]),
    .by = dplyr::all_of(c("Gene Symbol"))
  ) |> 
    dplyr::arrange(
      dplyr::desc(Avg_SHERPA),
      dplyr::desc(Npeptides)
    )
