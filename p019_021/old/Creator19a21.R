rm(list=ls())
library(exams)
options(exams_tex = "tools")
options(OutDec=",")

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p019_021")


exams2html("Pregunta019_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta020_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta021_New01.Rmd", question= "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")


elearn_exam <- c("Pregunta019_New01.Rmd", "Pregunta020_New01.Rmd", "Pregunta021_New01.Rmd")
exams2moodle(elearn_exam, n= 20, name= "p019_021")

exams2html("TmpPregunta019_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")



