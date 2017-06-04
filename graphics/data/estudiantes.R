
library(ggplot2)
library(gsheet)

sheet = gsheet2tbl('docs.google.com/spreadsheets/d/1_PtOspuoQBiH88XS8LP_UetWCnzsBH69m84pvzbAK1A')

df = as.data.frame.matrix(sheet)

