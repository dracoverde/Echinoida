library("ape")
data <- read.nexus.data("~/Documents/PhyloMeth/PhyloMeth_Class_work/DataforClass/Appendix2.nex")
data[[1]]
data.matrix <- matrix(nrow=length(data), ncol=length(data[[1]]))
for(taxon in sequence(length(data))){
  data.matrix[taxon, ] <- data[[taxon]]
}
rownames(data.matrix) <- names(data)
write.csv(data.matrix, file="~/Documents/PhyloMeth/PhyloMeth_Class_work/DataforClass/Matrix.csv")

