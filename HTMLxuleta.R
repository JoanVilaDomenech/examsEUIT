<sup>(1)</sup

<h1 style="font-size:10px;">ssdgggaqgq </h1>
  
<embed src="/Users/jvila/Dropbox/euit/common/exerc/fig/larval.pdf#zoom=FitH" width="60%" height="650px" />
<embed src="/Users/jvila/Dropbox/euit/common/exerc/examsEUIT/p004_006/TablePreg5.pdf#zoom=150" width="45%" height="420px"/>

  
  ```{r}
knitr::include_graphics("larval.pdf")
```

<span>&le;</span> 6
<span>&gt;</span> 6
<span>&asymp;</span>
<span>&plusmn;</span>
  
  
\simeq 
\thickapprox 

  
    
  
```{r data generation, echo = FALSE, results = "hide"}
xn <- sample(seq(1400, 1500), 1)
```

`r a`


<br>      
  
Hola &nbsp;&nbsp;&nbsp;&nbsp; Adeu
Regular space: &nbsp;
Two spaces gap: &ensp;
Four spaces gap: &emsp;



<embed src="larval.pdf#zoom=FitH" width="60%" height="650px" />
<embed src="larval.pdf#zoom=FitH" width="60%" height="650px" />
  
![](larval.pdf)

```{r, echo=FALSE, results='hide'}
include_supplement("larval.png")
```

```{r, echo=FALSE, out.width="60%"}
knitr::include_graphics("larval.png")
```

```{r echo = FALSE, results = 'asis', comment=FALSE}
kable(paste(mydat, collapse = ", "), col.names = NULL)
``` 

```{r echo = FALSE, results = 'asis', comment=FALSE}
library(kableExtra)
dat %>%
  kbl(caption = "Recreating booktabs style table") %>%
  kable_classic(full_width = F, html_font = "Cambria")
``` 


<p style="text-align: center;">Tabla 1: semanas hasta la curación</p>
  
  
<span style="color: red;">text</span>

<span style="background-color: red">en color rojo</span> 0,20045, que se corresponde con un valor de **z** = 0,84    

```{r boxplot, echo = FALSE, results = "hide", fig.height = 10, fig.width = 10, fig.path = "", fig.cap = ""}
  

 $\scriptsize \dfrac{ `r xxx[1,2]`}{`r xxx[1,3]`}$ = `r round(xxx[1,4], 7)`

${\scriptsize
\begin{eqnarray}
\text{IC}90\% &=& `r format(round(xprop, 3), digits = 3, nsmall=3)` \pm 1,64 * \sqrt{\frac{`r format(round(xprop, 3), digits = 3, nsmall=3)` * (1 - `r format(round(xprop, 3), digits = 3, nsmall=3)`)}{`r xn`}}\\
&=& 23
\end{eqnarray}
}$