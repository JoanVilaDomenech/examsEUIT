rm(list=ls())
library(exams)

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p010_012")
options(exams_tex = "tools")

exams2html("Pregunta010_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta011_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta012_New01.Rmd", question= "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")


elearn_exam <- c("Pregunta010_New01.Rmd", "Pregunta011_New01.Rmd", "Pregunta012_New01.Rmd")
exams2moodle(elearn_exam, n= 15, name= "p010_012")


