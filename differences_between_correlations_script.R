# Question 1

library(cocor)
?cocor.dep.groups.overlap

r.jk <- .83
r.jh <- .16
r.kh <- .19
n <- 30

cocor.dep.groups.overlap(r.jk, r.jh, r.kh, n, alternative = "two.sided",
                         test = "all", alpha = 0.05, conf.level = 0.95, null.value = 0,
                         data.name = NULL, var.labels = NULL, return.htest = FALSE)

## r= .67, 95% CI [.32,1.04], p = 0.0002 - interval has no 0, so significant 

# Question 2
?cocor.dep.groups.nonoverlap

r.jk <- .83
r.hm <- .38
r.jh <- .59
r.jm <- .16
r.kh <- .67
r.km <- .19
n <- 30
  
cocor.dep.groups.nonoverlap(r.jk, r.hm, r.jh, r.jm, r.kh, r.km, n,
                            alternative = "two.sided", test = "all", alpha = 0.05,
                            conf.level = 0.95, null.value = 0, data.name = NULL,
                            var.labels = NULL, return.htest = FALSE)

## r = .45, 95% CI [.14, .81], p = 0.0032

# Question 3
library(predictionInterval)
?predictionInterval
pi.r(r=.43,n=30,rep.n=100)

## Prediction interval 95% PI[.05, .74]

# Question 4
## You cannot? Need infinite number? 
## ASK ON MONDAY!!!!!

# Question 5
library(cocor)
?cocor.indep.groups

r1.jk <- .43
r2.hm <- .1
n1 <- 30
n2 <- 1000
cocor.indep.groups(r1.jk, r2.hm, n1, n2, alternative = "two.sided",
                   test = "all", alpha = 0.05, conf.level = 0.95, null.value = 0,
                   data.name = NULL, var.labels = NULL, return.htest = FALSE)

## No difference, r = .33, 95% CI [-.02, .59] 

# Question 6
## Can be as low as -.02 and as high as .59 (so probably a small to medium effect)