## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
# load up the package:
library(whoa)


## ---- eval=FALSE--------------------------------------------------------------
#  help("lobster_buz_2000")

## ---- fig.width=7-------------------------------------------------------------
# first get compute expected and observed genotype frequencies
gfreqs <- exp_and_obs_geno_freqs(lobster_buz_2000)

# then plot those.  Set max_plot_loci so that all 2000
# loci will be plotted
geno_freqs_scatter(gfreqs, max_plot_loci = 2000)

## -----------------------------------------------------------------------------
overall <- infer_m(lobster_buz_2000, minBin = 1e15)

## -----------------------------------------------------------------------------
overall$m_posteriors

## -----------------------------------------------------------------------------
binned <- infer_m(lobster_buz_2000, minBin = 2000)

## ---- fig.width=7-------------------------------------------------------------
posteriors_plot(binned$m_posteriors)

