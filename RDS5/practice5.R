library(airway)
data(airway, package = "airway")
class(airway)
library(SummarizedExperiment)
assays(airway)
expression <- assays(airway)[[1]]
head(expression)
nrow(expression)
