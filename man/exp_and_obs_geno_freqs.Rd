% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exp_and_obs_geno_freqs.R
\name{exp_and_obs_geno_freqs}
\alias{exp_and_obs_geno_freqs}
\title{Computed expected and observed genotype frequencies from a `vcfR' object}
\usage{
exp_and_obs_geno_freqs(v, prop_indv_required = 0.5,
  prop_loci_required = 0.5)
}
\arguments{
\item{v}{a `vcfR' object}

\item{prop_indv_required}{loci will be dropped if a proportion of
individuals less than prop_indv_required have non-missing data at that locus.
Default is 0.5}

\item{prop_loci_required}{individual will be dropped if their proportion of
non-missing loci is less than prop_loci_required. Default is 0.5.}
}
\value{
Returns a tibble with the following columns: \code{snp} = the locus name
as CHROM--POS; \code{p} = The frequency of the alternate (ALT) allele; \code{ntot} = the total
number of individuals with no missing data at the locus; \code{geno} = column
telling which genotype (0, 1, or 2) is referred to; \code{p_exp} = expected
frequency of the genotype; \code{p_obs} = observed frequency of genotype;
\code{n_exp} = expected number of such genotypes; \code{n_obs} = observed
number of such genotypes; \code{z_score} = simple statistic giving how far
the observed genotype frequency is from that expected under Hardy-Weinberg
equilibrium.
}
\description{
Under the assumption of Hardy-Weinberg equilibrium, this function uses the
estimated allele frequencies from the data set in v to compute expected genotype
frequencies, and then reports these along with the observed genotype frequencies.
Loci come out named as CHROM--POS.
}
\examples{
eao <- exp_and_obs_geno_freqs(lobster_buz_2000)
}
