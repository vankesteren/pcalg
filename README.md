# Discovering Causal Structure with the PC Algorithm

This is the repository for the data files of the [MSDSlab](https://msdatasciencelab.wordpress.com/) presentation by Oisín Ryan on 22/02/2018. Oisín will explain the background and implementation of the PC algorithm and show how it can discover causal structure in a network of variables through smart use of conditional independence rules.


## Package `pcalg` installation

The `pcalg` package has some dependencies which have been removed from `CRAN`. To install the package, run the following in `R`.

```r
source("https://bioconductor.org/biocLite.R")
biocLite(c("graph", "RBGL"))
install.packages("pcalg")
```