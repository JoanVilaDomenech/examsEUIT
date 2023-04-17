rm(list=ls())
library(exams)
options(exams_tex = "tools")

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p016_018")


exams2html("Pregunta016_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta017_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta018_New01.Rmd", question= "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")


elearn_exam <- c("Pregunta016_New01.Rmd", "Pregunta017_New01.Rmd", "Pregunta018_New01.Rmd")
exams2moodle(elearn_exam, n= 15, name= "p016_018")

