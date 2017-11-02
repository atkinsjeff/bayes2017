source("./materials/DBDA2E-utilities.R")  # Load definitions of graphics functions etc.
source("./materials/BernBeta.R")          # Load the definition of the BernBeta function

# Specify the prior:
# t = 0.75             # Specify the prior MODE.
# n = 25               # Specify the effective prior sample size.
# a = t*(n-2) + 1      # Convert to beta shape parameter a.
# b = (1-t)*(n-2) + 1  # Convert to beta shape parameter b.

a = 50
b = 50

n = 100

Prior = c(a,b)       # Specify Prior as vector with the two shape parameters.

# Specify the data:
N = 100                         # The total number of flips.
z = 58                         # The number of heads.
Data = c(rep(0,N-z),rep(1,z))  # Convert N and z into vector of 0's and 1's.

openGraph(width=5,height=7)
posterior = BernBeta( priorBetaAB=Prior, Data=Data , plotType="Bars" , 
                      showCentTend="Mode" , showHDI=TRUE , showpD=FALSE )
saveGraph(file="BernBetaExample",type="png")



#### Exercise 6.1
post = BernBeta( priorBetaAB = c(5, 4), Data = c(0))

# Exercise 6.2

post <- BernBeta(priorBetaAB = c(1, 1), Data = c(rep(1, 58), rep(0, 100 - 58)),
         showHDI = TRUE, showCentTend = "Mode")

BernBeta(post, Data = c(rep(1, 57), rep(0, 100 - 57)),
         showHDI = TRUE, showCentTend = "Mode")


## Exercise 6.3

# Response F is y = 1, response J is y = 0
# radio

post <- BernBeta(priorBetaAB = c(1,1), Data = c(rep(1, 40), rep(0, 10)),
                 showHDI = TRUE, showCentTend = "Mode")

Theta = seq(0, 1, length = 1000) #Fine teeth for Beta
# Two triangulr peeak
pTheta