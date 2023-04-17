rm(list=ls())
library(exams)
options(exams_tex = "tools")
options(OutDec=",")

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p025_027")


exams2html("Pregunta025_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta026_New01.Rmd", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")
exams2html("Pregunta027_New01.Rmd", question= "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")


elearn_exam <- c("Pregunta025_New01.Rmd", "Pregunta026_New01.Rmd", "Pregunta027_New01.Rmd")
exams2moodle(elearn_exam, n= 15, name= "p025_027")




