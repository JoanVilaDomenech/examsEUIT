rm(list=ls())
library(exams)
options(exams_tex = "tools")
options(OutDec=",")

setwd("/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p031_033")

exams2html("Pregunta031_New01.Rnw", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")

exams2html("Pregunta032_New01.Rnw", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")

exams2html("Pregunta033_New01.Rnw", question = "<h2>Pregunta</h2>",
           solution = "<h2>Solución</h2>", converter = "pandoc-mathjax")

elearn_exam <- c("Pregunta031_New01.Rnw", "Pregunta032_New01.Rnw", "Pregunta033_New01.Rnw")

exams2moodle(elearn_exam, n= 15, name= "p031_033")

