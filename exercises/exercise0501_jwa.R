
# Specify hit rate of test:
pPositiveGivenDisease = 0.99
# Specify false alarm rate of test:
pPositiveGivenNoDisease = 0.05
# Specify the original prior:
pDisease = 0.001

# Bayes rule for first, positive test (this is the calculation on p. 104):
pDiseaseGivenPositive = ( pPositiveGivenDisease * pDisease /
                            + ( pPositiveGivenDisease * pDisease
                                + + pPositiveGivenNoDisease * (1.0-pDisease) ) )

# Should be 0.01943...
pDiseaseGivenPositive

# Updating prior 
pDisease <- pDiseaseGivenPositive

# Bayes rule for second, negative test:
pDiseaseGivenNegative <- ( (1.0 - pPositiveGivenDisease) * pDisease /
                                        + ( (1.0-pPositiveGivenDisease) * pDisease
                                            + + (1.0-pPositiveGivenNoDisease) * (1.0-pDisease) ) )
          show( pDiseaseGivenNegative )
          
          
          
# Exercise 5.2
(1 - 0.05)          

n = 100000
message("D = + Present!")
(0.99 * 0.001 * n)

message("D = + Absent!")
(0.05 (1 - 0.001) * n)

message("D = - Present!")
((1 - 0.99) * 0.001 * n)

message("D = - Present!")
((1 - 0.05) * (1 - 0.001) * n)

