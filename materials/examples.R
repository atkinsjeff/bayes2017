source("./materials/DBDA2E-utilities.R") # Load definitions of graphics functions etc.
source("./materials/BernGrid.R") # Load the definition of the BernGrid function
Theta = seq( 0 , 1 , length=2001 ) # Specify fine comb for Theta.
pTheta = pmin( Theta , 1-Theta ) # Triangular shape for pTheta.
pTheta = pTheta/sum(pTheta) # Make pTheta sum to 1.0
Data = c(rep(0,100),rep(1,100)) # Same as c(0,0,0,1). 25% heads with N=4.
openGraph(width=5,height=7) # Open a graphics window.
posterior = BernGrid( Theta, pTheta , Data , plotType="Bars" ,
                      showCentTend="Mode" , showHDI=TRUE , showpD=FALSE )
saveGraph(file="BernGridExample",type="jpg")


# Create summary values of Data
z = sum( Data ) # number of 1’s in Data
N = length( Data )
# Compute the Bernoulli likelihood at each value of Theta:
pDataGivenTheta = Thetaˆz * (1-Theta)ˆ(N-z)
# Compute the evidence and the posterior via Bayes’ rule:
pData = sum( pDataGivenTheta * pTheta )
pThetaGivenData = pDataGivenTheta * pTheta / pData

