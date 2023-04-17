# One side area
OneArea <- function(xstart, xend, xmean, ee, xcolor){
    xlim<-c(xmean-3*ee, xmean+3*ee)
    n <- 500
    curve(dnorm(x,mean=xmean,sd=ee),xlim=xlim,xlab="",ylab="Densidad acumulada",axes=F, cex=1.2, main= "")
    aux <- seq(xstart,xend*ee,len=n)
    x2 <- c(min(aux),aux, max(aux))
    y <<- c(0,dnorm(aux,xmean,ee),0)
    polygon(x2,y,col=xcolor, border= 1)
    axis(1,pretty(xlim,n=10))
}

# OneArea(xstart = 18, xend = 21.5, xmean = 20, ee = 1, xcolor= "blue")

