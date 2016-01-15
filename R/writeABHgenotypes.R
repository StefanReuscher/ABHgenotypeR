#' Export a genotype list to a .csv file.
#'
#' @param genos The output of readABHgenotypes or one of the impuation/error
#'   correction functions.
#'
#' @return A file which can be used in R/qtl or elsewhere.
#'
#' @examples writeABHgenotypes(genotypes, outfile = "./outfile_name.csv")

#' @export
writeABHgenotypes <- function(genos = "genotypes",
                              outfile = "./outfile.csv") {
  outGenos <- genos$ABHmatrix

  outGenos <- cbind("id" = row.names(outGenos),
                    outGenos)
  outGenos <- rbind(as.integer(c("",genos$chrom)),
                    outGenos)

  write.csv(outGenos, file = outfile, row.names = FALSE)
}
