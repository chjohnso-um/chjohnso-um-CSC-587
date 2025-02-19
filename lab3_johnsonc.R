# Lab 3
# Chris Johnson
# 2/19/2025

# This assignment will need the following dataset: "income.data.csv".

# First set the drive to where "income.data.csv" is saved.
setwd("G:/My Drive/CSC-587")

# Use read.csv() to read the file "income.data.csv".
data = read.csv("income.data.csv")

# Load the data and fit a linear regression model using Income as the independent 
# variable and Happiness as the dependent variable:
model1 = lm(happiness ~ income, data = data)

# Use the summary() function to view the results of the regression:
summary(model1)

# Plot the data points and the regression line:
with(data, plot(income, happiness))
abline(model1)
coef(model1)

# Calculate the residuals of the model
residuals1 = residuals(model1)

# Plot the residuals to check for homoscedasticity (constant variance of residuals):
plot(residuals1, main = "Residuals of Simple Linear Regression")

# Calculate the residual sum of squares (RSS) for the model:
RSS1 = sum(residuals1)

# Result: RSS1 = 3.591e-16

# Calculate the Mean Squared Error (MSE) for the model:
MSE1 = mean(residuals1)

# Result: MSE1 = 6.907e-19






