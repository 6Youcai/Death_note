library(GenVisR)
library(xlsx)

url <- "http://clincancerres.aacrjournals.org/content/clincanres/suppl/2015/11/12/1078-0432.CCR-15-1745.DC1/152934_1_supp_3139930_n6h2q6.xlsx"
system(paste0("wget ", url))
mutation_data <- read.xlsx("152934_1_supp_3139930_n6h2q6.xlsx", header = TRUE, sheetIndex = 1)
colnames(mutation_data)[c(1,8,12)] = c("sample","gene_name","trv_type")
waterfall(mutation_data, fileType = "MGI", mainXlabel=TRUE, mainLabelCol="amino.acid.change", mainLabelSize=2)
