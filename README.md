# Statistical Methods - R


Regression analysis is a branch of statistical methodology concerned with relating
a response y to a set of independent, or predictor, variables x1, x2, . . . , xk. The goal
is to build a good model—a prediction equation relating y to the independent variables—that will enable us to predict y for given values of x1, x2, . . . , xk, and to do so with a small error of prediction. When using the model to predict y for a particular set of values of x1, x2, . . . , xk, we will want a measure of the reliability of our prediction. 
That is, we will want to know how large the error of prediction might be. All these elements are parts of a regression analysis, and the resulting prediction equation is often called a regression model.

The data for regression can be of two types: observational or experimental.
Observational data are obtained if no attempt is made to control the values of the
independent variables (x’s).

If the values of the independent variables (x’s) in regression
are uncontrolled (i.e., not set in advance before the value of y is observed) but
are measured without error, the data are observational.

If the values of the independent variables (x’s) in regression
are controlled using a designed experiment (i.e., set in advance before the value
of y is observed), the data are experimental.

Probabilistic model
y = E(y)+ ε, where
1. E(y) = mean (expected) y is a function of
x1, x2, . . . , xk
2. ε is random error

Steps in regression
1. Hypothesize the form of the model for E(y)
2. Collect the sample data
3. Estimate the unknown parameters in the model
4. Specify the probability distribution of ε
5. Statistically check model adequacy
6. Use the model for prediction and estimation

## Simple Linear Regression: 
It is the approach to model the relationship between a dependent variable and one independent variable. We had built the model using lm(y ~ x) where y is the dependent variable and x is the independent variable.

 ## Multiple Linear Regression: 
 It is the approach to model the relationship between a dependent variable and one or more independent variables. We had built the model using lm(y~ x1 + x2 ) where y is the dependent variable and x1 and x2 are independent variables.
 
## Coefficient of Correlation: 
It measures the strength of linear relationship between the independent variable and dependent variable. It ranges between -1 and +1. If x and y have a strong positive linear correlation, r is close to +1. If x and y have a strong negative linear correlation, r is close to -1. If there is no linear correlation or a weak linear correlation, r is close to 0. A value near zero means that there is nonlinear relationship between the two variables.

## Polynomial Regression - Quadratic Model: 
The form of this model is
y = β0 + β1x + β2x2+ ε

The term involving x2, called a quadratic term (or second-order term), enables us to
hypothesize curvature in the graph of the response model relating y to x. Graphs of the quadratic model for two different values of β2. When the curve opens upward,

## Stepwise Regression: 
It is one of the most widely used variable selection methods. To run a stepwise regression, the user first identifies the dependent variable y, and the set of potentially important independent variables, x1, x2, . . ., xk, where k is generally large. The result of the stepwise procedure is a model containing only those terms with t-values that are significant at the specified α level. Thus, in most practical situations only several of the large number of independent variables remain. In these algorithmic approaches, variables are added into or deleted from the model in an iterative manner, one at a time.

### Following are the types of stepwise regression techniques:
a) Forward selection
b) Backward selection.
c) Stepwise search.

## Multicollinearity:
It is a condition when two or more of the independent variables that are used in regression are moderately or highly correlated.

## Variance Inflation (VIF): 

It is a formal procedure for detecting multicollinearity to examine variance inflation factors. Variance inflation factor is the measure that can be used to quantify collinearity.

## Ridge Regression: 
Ridge Regression is a technique for analyzing multiple regression data that suffer from multicollinearity. When multicollinearity occurs, least squares estimates are unbiased, but their variances are large so they may be far from the true value. By adding a degree of bias to the regression estimates, ridge regression reduces the standard errors.

In ridge regression, the estimates of the β coefficients are biased but have significantly smaller standard errors than the unbiased β estimates yielded by the least squares method.

## Generalized Cross Validation(GSV): 
In ridge regression GSV is the universal way to select lambda values. Lambda values with smallest GSV are selected.

## Akaike information criterion (AIC): 
It is an estimator of out-of-sample prediction error and thereby relative quality of statistical models for a given set of data. Given a collection of models for the data, AIC estimates the quality of each model, relative to each of the other models. Thus, AIC provides a means for model selection.

## Full and Reduced Model:
A linear regression model with more variables may not always perform better than the regression model with less variables when both models are compared in terms of residual of sum squares. To compare two regression models in terms of the independent variables included in the models we need to test if the regression model with more independent variables performs statistically better than the regression model with less independent variables. To this end, we define the full regression model as: y = X1β1 + X2β2 + ε, and the reduced regression model as: y = X2β2 + ε. A full linear regression model is the model with more independent variables and a reduced model is the model with a subset of the independent variables in the full model. In other words, the reduced regression model is the model nested in the full regression model.

## Regression Residuals: 
The regression residual is the observed value of the dependent variable minus the predicted value, or ε = y – y-hat. One way to check performance of a regression model is through regression residual. An evenly distributed residuals around mean zero is an indication of a good regression model fit.

The mean of the residuals is equal to 0. Residual (or partial residual) plots are useful for indicating potential model improvements, but they are no substitute for formal statistical tests of model terms to determine their importance.

## Regression with Dummy variables: 
Regression with Dummy Variables In regression analysis, a dummy variable is one that takes the value 0 or 1 to indicate the absence or presence of some categorical effect that may be expected to shift outcome. The reason we say “dummy” because it is not a variable that carries value of actual magnitude.
For example if we want to predict height based on age and gender, gender becomes dummy variable, we can define a model by lm(height ~ age + factor(gender)).

## Equal variance condition: Homoscedastic: 
The error term ε have constant variance for all levels of the independent variables. If the variances satisfy this property they are called homoscedastic.

## Unequal variance condition: Heteroscedastic:
Unequal variances for different settings of independent variables are called as heteroscedastic. The typical cone shape graph shows the presence of heteroscedasticity.

## Piecewise Linear Regression:
A model that proposes different straight-line relationships for different intervals over the range of x is called a piecewise linear regression model. As its name suggests, the linear regression model is fit in pieces.

## Weighted Linear Regression: 
Each term in the weighted least squares criterion includes an additional weight, that determines how much each observation in the data set influences the final parameter estimates and it can be used with functions that are either linear or nonlinear in the parameters.
18) Nearest neighborhood method: We use nearest neighborhood method to pick weights for weighted linear regression.

## ANOVA (Analysis of Variance): 
Analysis of Variance (ANOVA) is a statistical method used to test differences between two or more means. It may seem odd that the technique is called "Analysis of Variance" rather than "Analysis of Means." ANOVA is a statistical technique that assesses potential differences in a scale-level dependent variable by a nominal-level variable having 2 or more categories. They help you to figure out if you need to reject the null hypothesis or accept the alternate hypothesis.

## Least Square Analysis: 
The least squares principle for the simple linear regression model is to find the estimates b0 and b1 such that the sum of the squared distance from actual response yi and predicted response ˆyi = β0 + β1xi reaches the minimum among all possible choices of regression coefficients β0 and β1. The motivation behind the least square method is to find parameter estimates by choosing the regression line that is the most “closest” line to all data points.

