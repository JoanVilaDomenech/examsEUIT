rm(list=ls())
library(exams)

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p013_015")
options(exams_tex = "tools")

exams2html("Pregunta013_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta014_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta015_New01.Rmd", question= "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")


elearn_exam <- c("Pregunta013_New01.Rmd", "Pregunta014_New01.Rmd", "Pregunta015_New01.Rmd")
exams2moodle(elearn_exam, n= 15, name= "p013_015")

