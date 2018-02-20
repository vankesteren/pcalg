# Discovering Causal Structure with the PC Algorithm

This is the repository for the data files of the [MSDSlab](https://msdatasciencelab.wordpress.com/) presentation by [Oisin Ryan](https://ryanoisin.github.io/) on 22/02/2018. Oisin will explain the background and implementation of the PC algorithm and show how it can discover causal structure in a network of variables through smart use of conditional independence rules.


## Package `pcalg` installation

The `pcalg` package has some dependencies which have been removed from `CRAN`. To install the package, run the following in `R`.

```r
source("https://bioconductor.org/biocLite.R")
biocLite(c("graph", "RBGL", "Rgraphviz"))
install.packages("pcalg")
```

## Dataset loading 

Here is how to load the data into `R`. Note that the `pcalg::pc()` function uses a list of sufficient statistics rather than the raw dataset.
```r
# Necessary git url for the location of the datasets (i.e. this repo)
gitUrl <- "https://raw.githubusercontent.com/msdslab/pcalg/master/datasets/"

# Dataset loading - change 1.csv into your dataset of choice
dat <- read.csv(paste0(gitUrl, "1.csv"))
suffStat <- list(C = cor(dat), n = nrow(dat))

```

# DAG estimation

For those who want a little head start, below an example analysis.

```r
library(pcalg)

res <- pc(suffStat, labels = names(dat),
          indepTest = gaussCItest, # the type of independence test
          alpha = 0.01) # the alpha level of the independence test
plot(res)

# More information about the pc function
?pc
```