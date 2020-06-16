#REGRESSION ANALYSIS: check correlation 

x=c(1,1,1,2,2,2,3,3)
y=c(300,305,325,375,400,425,500,550)


cor.test(x,y) #to calculate the coefecient of correlation
cor(x,y)
#Test if the linear correlation i different from zero?(aplha=0.5)


Ho:rho=0
Ha:rho!=0


#Test Statistic tobs=9.8
#pvalue=6.40-.05 < 0.5


#sample estimates is 0.96628 = 0.97

cor.test(x,y)$p.value    # default p-value for rho!=0

#x and y are significantly correlated, so we move on to regress y on x


m1 = lm(formula = y ~ x)    #use m1 for model 1 
#intercept ---- y intercept beta0=198.5
#x --- slope beta1 =106.2


summary(m1)

#t-value in the summary are the test statistic 
#Pr(---is the p-value= 0.000102 for beta0
#As the p-values are tiny we rject Ho that is x is useful to predict y 


m1$coef[1]  #beta0hat
m1$coef[2] #beta1hat

#prediction equation
y~hat = m1$coef[1]+m1$coef[2]*4 
summary(m1)




# To extract Rsq value from 
summary(m1)$r.square

