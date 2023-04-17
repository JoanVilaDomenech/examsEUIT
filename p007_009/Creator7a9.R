rm(list=ls())
library(exams)

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p007_009")
options(exams_tex = "tools")

exams2html("Pregunta007_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta008_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta009_New01.Rmd", question= "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")


elearn_exam <- c("Pregunta007_New01.Rmd", "Pregunta008_New01.Rmd", "Pregunta009_New01.Rmd")
exams2moodle(elearn_exam, n= 15, name= "p007_009")

