install.packages ("carData")
#alldata available in carData :
#  C:\Users\ADMIN\AppData\Local\Temp\RtmpMnbR8K\downloaded_packages

library(carData)

data(Salaries)
mydata <- data.frame (Salaries)
attach(mydata)
mydata
head(mydata)
tail(mydata)

#### removing outliers( extreme observations that affect your mean etc) using boxplot##
##univariate outliers using boxplot

male_data <- subset (mydata, sex == "Male")
female_data <- subset (mydata, sex == "Female")

boxplot (male_data$salary, female_data$salary)

###assumption 1 : normality - normally distributed population
# null hyp - ppln is normal.   althernative hyp - ppln is not normal. 

#BASIC R FUNCTIONS 
shapiro.test (male_data$salary)
ks.test (male_data$salary, pnorm)

install.packages("moments")
library (moments)
agostino.test (male_data$salary)

#graphical methods 
qqnorm(male_data$salary)
qqline (male_data$salary)


### ass. 2 : homogenity of variances
# null hyp - var of 1 = var 2   althernative hyp = var1! var2

install.packages("car")
library(car)
leveneTest(salary~sex)
### ass. 3 : independent assignment of samples. (ass of research methodology)
## ass. 4 : sample is drawn from population at large randomly (ass of research methodology)



####doing a t test ####
t.test(salary~sex)
detach(mydata)
