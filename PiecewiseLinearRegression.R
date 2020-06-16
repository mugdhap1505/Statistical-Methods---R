#Load the data:
data = read.csv(file.choose())
data

colnames(data) = c("y","x")

#Predict y on x:
m1=lm(y~x,data=data)

y= data[,1]
x= data[,2]

#Plot the data
plot(x,y)

#Plot suggests piecewise linear regression 
#an estimation for knot value
k=3.57

#Load package segmented
m2=segmented(m1,seg.Z=~x,psi=k) #psi 
summary(m2)

#UI.x is the coeffecient for (x-k)*I(x>k)

#Prediction eqn for m2:
E(y)=beta0+beta1x1+beta2(x1-3.57)x2
#y hat = 2.173+0.546*x+2.771*(x-3.57)*I(x>3.57)

#that says, when x<=3.57, y hat= 2.143+0.546*x
#when x> 3.57, y hat= 2.143+0.546*x+2.771*(x-3.57)

#R^2= 0.994, p-value 0 reject Ho

#Plot for viewing two linear lines
plot.segmented(m2)