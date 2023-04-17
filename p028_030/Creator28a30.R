rm(list=ls())
library(exams)
options(exams_tex = "tools")
options(OutDec=",")

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p028_030")


exams2html("Pregunta028_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta029_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta030_New01.Rmd", question= "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")


elearn_exam <- c("Pregunta028_New01.Rmd", "Pregunta029_New01.Rmd", "Pregunta030_New01.Rmd")
exams2moodle(elearn_exam, n= 15, name= "p028_030V03")




