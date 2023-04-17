rm(list=ls())
library(exams)

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p001_003")
options(exams_tex = "tools")

exams2html("Pregunta001_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>")
exams2html("Pregunta002_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>")
exams2html("Pregunta003_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>")


elearn_exam <- c("Pregunta001_New01.Rmd", "Pregunta002_New01.Rmd", "Pregunta003_New01.Rmd")
exams2moodle(elearn_exam, n= 15, name= "p001_003")


