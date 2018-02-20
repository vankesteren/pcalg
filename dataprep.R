# PCAlg dataset preparation
# Erik-Jan van Kesteren 
# 20/02/2018

# Load data ----
library(pcalg)
data("gmG")
d <- data.frame(gmG$x)
names(d) <- gmG$g@nodes

# generate selection ----

# k subsets of size n/k
set.seed(142857)
k <- 10
selection <- sample(rep(1:k, each = nrow(d)/k))

# write data to datasets folder
for (i in 1:k) {
  write.csv(d[selection == i,], file = paste0("./datasets/", i, ".csv"))
}
