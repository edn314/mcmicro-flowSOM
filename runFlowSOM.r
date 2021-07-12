# install packages
install.packages("BiocManager")
BiocManager::install("FlowSOM")

# load library
library("FlowSOM")

# get arguments
args <- commandArgs(trailingOnly=TRUE)

# read in data
data <- read.FCS(args[1])

# get num cols
num_cols <- strtoi(keyword(data, '$PAR')[1])

# run FlowSOM, I'm assuming TRUE uses all columns, not sure what to put for maxMeta and not sure if it matters
fSOM <- FlowSOM(args[1], colsToUse=TRUE), maxMeta=20)