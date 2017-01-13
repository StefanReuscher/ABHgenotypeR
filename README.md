<!-- README.md is generated from README.Rmd. Please edit that file -->
ABHgenotypeR
============

The ABHgenotypeR R package to easily visualize and manipulate ABH genotypes.

Introduction
------------

The `ABHgenotypeR` package provides simple imputation, error-correction and plotting capacities for genotype data. The function in this package were initially developed for the GBS/QTL analysis pipeline described in:

*Furuta, Reuscher et. al., 2016 Adaption genotyping by sequencing for rice F2 populations. Genes, Genomes and Genetics*

The `ABHgenotypeR` package is supposed to serve as an intermediate but independent analysis tool between the TASSEL GBS pipeline and the `qtl` package. `ABHgenotypeR` provides functionalities not found in either TASSEL or `qtl` in addition to visualization of genotypes as "graphical genotypes". Plotting is based on ggplot2.

Installation
------------

from CRAN:

``` r
install.package("ABHgenotypeR")
library(ABHgenotypeR)
```

or from github:

``` r
#needs "devtools"
install.packages("devtools")
library(devtools)

install_github("StefanReuscher/ABHgenotypeR", build_vignettes = TRUE)
```

for more information run:

``` r
vignette("ABHgenotypeR-vignette", package = "ABHgenotypeR")
```
