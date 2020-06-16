#Load the dataset:
data = read.csv(file.choose())
data

#Replace the column names
colnames(data) = c("Y","X")
data

#Fit the Quadratic model on the data using x to predict y.
m1= lm(Y~X+I(X^2), data)
summary(m1)

#a) Prediction Equation:
Y = 1.63 - 0.066 * (X) + 0.0017 * (X^2)

#Test to check if the independent variables are correlated.
data[,3] = cbind(I(data[,2]^2))
data 
cor.test(data[,2],data[,3])$p.value

#The p value is 2.6123e-11, as p-value is tiny we conclude that is X and X^2 is strongly correlated.
#Multicollinearity exists when two or more of the independent variables are moderately or highly correlated, Hence we conclude that here multicollinearity exists.
#Ridge regression is a commonly used technique used to address the problem of multicollinearity.

#b)VIF values for X and X^2:
#Install package "car"
vif(m1)
#VIF values for X and X^2 are 45.36672 and 45.36672 respectively.

#Verification of VIF values:
m3 = lm(X~I(X^2),data = data)
vif1 = 1/(1-summary(m3)$r.square)
vif1
#VIF1= 45.36672( VIF value for X)

m4 = lm(I(X^2)~X,data = data) 
vif2 = 1/(1-summary(m4)$r.square)
vif2
#VIF2 = 45.36672 (VIF value for X^2)

summary(m3)
summary(m4)

#VIF values should be less ideally. As we have VIF values above 10, independence among the variables is not met.
#Correlation test provides very tiny p-value which is 2.6123e-11, as p-value is tiny we conclude that is X and X^2 is strongly correlated.
#Multicollinearity exists when two or more of the independent variables are moderately or highly correlated, hence multicollinearity exists here. 

#Random 11 observations, Ridge regression method applied:
n=nrow(data)

#1000 simulations
sim = 1000
a=matrix(0,sim,1)

#Size of training data 
n1= floor(0.8*n) 
n1

for(i in 1:1000){
  s=sample(1:n,n1)
  s
  training=data[s,]
  training
  testing=data[-s,]
  testing
  
  lambda1=seq(0,1,0.001)
  library(MASS)
  m5=lm.ridge(Y~X+I(X^2),lambda=lambda1,training)
  lambda.opt=lambda1[which.min(m5$GCV)]
  lambda.opt
  
  m6=lm.ridge(Y~X+I(X^2),lambda=lambda.opt,training)
  coef(m6) 
  
  data1=data.frame(c(rep(1,nrow(testing))),testing[,2:3])
  prediction=coef(m6)%*%t(data1)
  prediction
  
  abs(testing[,1]-prediction)
  a[i] = sum((prediction-testing[,1])^2)  
  
}

#Calculation of mean of the sum of squared error from 1000 simulations
mean(a)




