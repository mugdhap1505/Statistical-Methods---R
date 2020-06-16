# We are going to do data analysis on heights vs gender and age 

height= c(76.1,77,78.1,78.2,78.8,79.7,79.9,81.1,81.2,81.8,82.8)
age=c(18,19,20,21,22,23,24,25,26,27,28)
age=c(seq(18,28))

gender=c("F","F","F","F","F","F","M","M","M","M","M")# now we cannot replace it with numbers 
gender=c(rep(0,6),rep(1,5)) #F=0M=1

#Prediction equation on height vs age and gender 
#gender is a dummy variable, age is a continious variable 

m1=lm(formula=height~age+factor(gender))
summary(m1)

m1=lm(height~age+gender) # when we take dummy variables, no need to take factor, as R knows that as we have taken aplhabets it is a dummy variable, but u cannot interpret because it gives just gender at the output
summary(m1)# do not use this approch even if it gives an answer 



#One more example about including dummy variables

#data is about SAT scores from three schools and mathematical thinking score 

sat=c(570,980,580,890,1200)    #dependent variable
schools = c("a","a","b","c","c") #independent variable, dummy variable as it takes classes
mathsscore=c(90,100,86,90,95) #continous ind variable 

m2=lm(sat~mathsscore+factor(schools))
summary(m2)