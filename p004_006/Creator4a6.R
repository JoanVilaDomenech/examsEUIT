rm(list=ls())
library(exams)

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p004_006")
options(exams_tex = "tools")

exams2html("Pregunta004_New02.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>")
exams2html("Pregunta005_New02.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta006_New02.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")


elearn_exam <- c("Pregunta004_New02.Rmd", "Pregunta005_New02.Rmd", "Pregunta006_New02.Rmd")
exams2moodle(elearn_exam, n= 15, name= "p004_006V02")


