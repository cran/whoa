

#' Computed expected and observed genotype frequencies from a `vcfR' object
#'
#' Under the assumption of Hardy-Weinberg equilibrium, this function uses the
#' estimated allele frequencies from the data set in v to compute expected genotype
#' frequencies, and then reports these along with the observed genotype frequencies.
#' Loci come out named as CHROM--POS.
#'
#' @param v a `vcfR' object
#' @param prop_indv_required loci will be dropped if a proportion of
#' individuals less than prop_indv_required have non-missing data at that locus.
#' Default is 0.5
#' @param prop_loci_required individual will be dropped if their proportion of
#' non-missing loci is less than prop_loci_required. Default is 0.5.
#' @export
#' @return Returns a tibble with the following columns: \code{snp} = the locus name
#' as CHROM--POS; \code{p} = The frequency of the alternate (ALT) allele; \code{ntot} = the total
#' number of individuals with no missing data at the locus; \code{geno} = column
#' telling which genotype (0, 1, or 2) is referred to; \code{p_exp} = expected
#' frequency of the genotype; \code{p_obs} = observed frequency of genotype;
#' \code{n_exp} = expected number of such genotypes; \code{n_obs} = observed
#' number of such genotypes; \code{z_score} = simple statistic giving how far
#' the observed genotype frequency is from that expected under Hardy-Weinberg
#' equilibrium.
#'
#' @examples
#' eao <- exp_and_obs_geno_freqs(lobster_buz_2000)
exp_and_obs_geno_freqs <- function(v, prop_indv_required = 0.5, prop_loci_required = 0.5) {

  # first get an 012 matrix with loci in the columns
  # and samples in the rows
  tmp <- vcfR::extract.gt(v, element = "GT")
  dimnames(tmp) <- NULL
  g012 <- t(make_it_012(tmp))
  colnames(g012) <- paste(v@fix[,1], v@fix[,2], sep = "--")  # name the Chrom--Pos

  # now, drop the loci with too much missing data, and after that
  # drop the indivs with too much missing data
  pml <- colMeans(g012 > -1)
  g012 <- g012[, pml > prop_indv_required]
  pmi <- rowMeans(g012 > -1)
  g012 <- g012[pmi > prop_loci_required,]

  gfc <- geno_freq_calc_single(g012)

  gfc
}
