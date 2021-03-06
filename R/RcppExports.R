# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' Estimate heterozygote miscall rate for different read depth categories (no nulls)
#'
#' To see how this Rcpp function is applied, see the code in
#' \code{\link{infer_m}}.
#' @param Y the 012,-1 matrix that is N x L giving the observed genotypes of the N individuals
#' at L SNPs.
#' @param R integer matrix that is N x L giving the read depth categories.  These must be indexed from
#' 1 up to num_cats.  Missing data should be -1.
#' @param init_m starting value for m.  Typically you might want to use the m estimated
#' from init_m
#' @param num_cats the number of read depth categories.
#' @param p_prior two-vector that holds the beta parameters for a prior on the
#' allele frequency for each locus.  Typical value is c(0.5, 0.5).
#' @param m_prior two-vector that holds the beta parameters for a prior on the
#' heterozygote miscall rate for each locus.  Typical value is c(0.5, 0.5).
#' @param num_reps the number of MCMC sweeps to do.
#' @keywords internal
estimate_m_rd <- function(Y, R, init_m, num_cats, p_prior, m_prior, num_reps) {
    .Call('_whoa_estimate_m_rd', PACKAGE = 'whoa', Y, R, init_m, num_cats, p_prior, m_prior, num_reps)
}

#' simulate a new miscall rate for each read depth category given X and Y
#'
#' This just writes new values into M as if it were an output variable.
#' Internal function used within \code{\link{estimate_m_rd}}.
#' @keywords internal
gibbsM <- function(M, num_cats, X, Y, R, pri) {
    invisible(.Call('_whoa_gibbsM', PACKAGE = 'whoa', M, num_cats, X, Y, R, pri))
}

#' simulate new reference allele frequencies from their beta full conditional
#'
#' This just writes new values into P as if it were an output variable.
#' Internal function used within \code{\link{estimate_m_rd}}.
#' @keywords internal
gibbsP <- function(p, X, pri) {
    invisible(.Call('_whoa_gibbsP', PACKAGE = 'whoa', p, X, pri))
}

#' compute full conditional for each X given Y, p, R, and m, and then sample from it
#'
#' This just writes new values into X as if it were an output variable.
#' Internal function used within \code{\link{estimate_m_rd}}.
#' @keywords internal
gibbsX <- function(X, Y, R, p, M) {
    invisible(.Call('_whoa_gibbsX', PACKAGE = 'whoa', X, Y, R, p, M))
}

#' just a quick function for making an 012 matrix from a character matrix
#'
#' The standard way within R of pulling values out of a named
#' vector really bogs down on large data sets.  So I will do this instead.
#' @param M a character matrix of variant call format (VCF) genotypes and no dimnames.  Allowable values are
#' "0/0", and "0|0", which get coverted to integer 0;  "0/1", "0|1", "1/0", and "1|0",
#' which get converted to integer 1; and
#'  "1/1", and "1|1", which get converted to integer 2.  Everything else gets
#'  converted to -1 to denote missing data.
#' @return An integer matrix of values which are 0, 1, 2, or -1.
#' @export
#' @examples
#' # get an 012 matrix from the lobster data
#' tmp <- t(vcfR::extract.gt(lobster_buz_2000, element = "GT"))
#' dimnames(tmp) <- NULL
#' g <- make_it_012(tmp)
make_it_012 <- function(M) {
    .Call('_whoa_make_it_012', PACKAGE = 'whoa', M)
}

