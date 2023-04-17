## to Simulate a Cathegorical variable
######################################
SimCat<-function(sn, sprops)
    {
    props<-c(sprops, 1-sum(sprops))
    temp<-NULL
    for (i in 1:length(props)) {
        temp<-c(temp, rep(i,round(sn*props[i],0)))
        }
    if(length(temp) > sn) {temp<-temp[1:sn]}
    if(length(temp) < sn) {temp<-c(temp, rep(max(temp), sn-length(temp)))}
    return(temp)
    }
# ta<-SimCat(200, c(20/100, 30/100, 35/100))


## to Simulate a random normal Continous variable
##################################################
SimCon<-function(sn, smean, ssd, lolimit, uplimit, sdec)
    {
      if (ssd^2>(smean-lolimit)*(uplimit-smean))
        {cat("The SD is too big to simulate data by a beta distribution\n")}
      else
       {
        x1<-smean
        x2<-ssd^2
        x1<-(x1-lolimit)/(uplimit-lolimit)
        x2<-x2/(uplimit-lolimit)^2
        alpha<-x1*(x1* (1-x1)/x2-1)
        beta<-(1-x1)*(x1* (1-x1)/x2-1)
        temp<-rbeta(sn, alpha, beta)
        temp<-round(lolimit+(uplimit-lolimit)*temp,sdec)
        return(temp)
        }
    }

# age<-SimCon(20,55,12,35,74,0)


## to Simulate a Correlated variable
####################################
SimCor<-function(MyData, x, meany, sdy, lolimit, uplimit, xycor, ydec)
    {
    x01<-MyData[, x]                                   # 'x' variable
    covar<-xycor*sqrt(var(x01)*sdy^2)                  # covariance
    zbeta<-covar/var(x01)                              # beta
    zalpha<-meany - zbeta * mean(x01)                  # alpha
    yfit<-zalpha + x01*zbeta                           # fitted values
    errorsd<-sqrt(sdy^2-var(yfit))                     # sd(error)
    error<-rnorm(length(x01), mean = 0, sd = errorsd)  # estimating error
    yvari<-yfit+error                                  # adding error
    # arranging extreme lower & upper limits
    for (i in 1:length(yvari)){
        yvari[i]<-if (yvari[i]<lolimit)
                 {runif(1, lolimit, quantile(yvari[yvari>lolimit], 0.05))}
            else {if (yvari[i]>uplimit) {runif(1, quantile(yvari[yvari<uplimit], 0.95), uplimit)} else yvari[i] }
        }
    yvari<-round(yvari,ydec)                            # rounding
    return(yvari)
    }

# bmi<-SimCor(dat, "age", 27.4, 4.6, 17, 40,0.7, 1)


