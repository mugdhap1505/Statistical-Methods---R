#LOAD THE DATA 
data=read.csv(file.choose())

#MOST RECENT DATA 
data=data[-1,]

#Applying the model
m1=lm(cost~weight+distance,data)
summary(m1)

step(m1,direction='both')

#Aic : keep the independent varibale with small AIC value 

data[,5]= data[,1]*data[,4]

m2=lm(cost~weight+distance+I(weight^2)+I(distance^2)+I(weight*distance),data)
summary(m2)

#Step function selects individual models but it does not evaluate the model
step(m2,direction='both')
step(m2,direction='backward')

#In AIC values negative sign does not matter the highest value is insignificant

#stop at the best model
stop(model) 

m3=lm(cost~weight+I(weight^2)+I(distance^2)+I(weight*distance),data)
summary(m3)

data1=read.csv(file.choose())

#Predict y on x1 through x7 

m4=lm(y~x1+x2+x3+x4+x5+x6+x7, data1)
summary(m4)
step(m4, direction="backward")


#P336 
#step(model) returns the group of independent variables at each step 

#number of predictors



