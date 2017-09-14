# Exercise 4.1 Jeff Atkins
show(HairEyeColor) # Show data

EyeHairFreq = apply(HairEyeColor, c("Eye","Hair"), sum) # Sum across sex

EyeHairProp = EyeHairFreq / sum(EyeHairFreq) # joint proportions, Table 4.1

show(round(EyeHairProp, 2))

HairFreq = apply(HairEyeColor, c("Hair"), sum ) # Sum across sex and eye

HairProp = HairFreq / sum(HairFreq) # marginal proportions, Table 4.1

show(round(HairProp, 2))


EyeFreq = apply( HairEyeColor , c("Eye") , sum ) # Sum across sex and eye
EyeProp = EyeFreq / sum( EyeFreq ) # marginal proportions, Table 4.1
show( round( EyeProp , 2 ) )
EyeHairProp["Blue",] / EyeProp["Blue"] # conditional prob, Table 4.2