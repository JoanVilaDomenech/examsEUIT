rm(list=ls())
library(exams)
options(exams_tex = "tools")
options(OutDec=",")

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p034_036")

exams2html("Pregunta034_New01.Rnw", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")

exams2html("Pregunta035_New01.Rnw", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")

exams2html("Pregunta036_New01.Rnw", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")

elearn_exam <- c("Pregunta034_New01.Rnw", "Pregunta035_New01.Rnw", "Pregunta036_New01.Rnw")

exams2moodle(elearn_exam, n= 15, name= "p034_036")


c(xwom, RR, lo, up)
