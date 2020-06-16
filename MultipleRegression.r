#MULTIPLE LINEAR REGRESSION


#The aim is to decrease the rsquare value along with the number of variables


#Generate two random samples in N(0,1) to predict 

y=c(rnorm(10,1,1))  #noraml sample from standard normal distribution 

x1=c(rnorm(10,0,1))
x2=c(rnorm(10,0,1))

# multiple linear regression as two var are continous or quantitative variables
m2=lm(formula=y~x1+x2)  

#lm stands for linear model
summary(m2)

#m2 is the full model and m3 is the reduced model 

m3= lm(y~x2) 

anova(m2,m3)
# the value in F column is the test statistic #Ha:beta1 !=0 has test statistic= 0.36 and p-value = 0.56 
#therefore we FTR null, thus the removal was correct 
#if removal was incorrect that means it has to be added back 



