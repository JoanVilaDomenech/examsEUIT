rm(list=ls())
library(exams)
options(exams_tex = "tools")
options(OutDec=",")

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/")

exams2pdf("skeleton.Rnw", template = "plain2.tex")


