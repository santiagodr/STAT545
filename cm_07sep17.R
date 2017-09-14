# 07 sept 2017
# practicing with R in STATS545 class

a <- 2  #intercept
b <- -3 #slope 
n <- 100 #sample size
sig_sq <- 0.5
x <- runif(n)
y <- a + b * x + rnorm(n, sd = sqrt(sig_sq))
(avg_x <- mean(x))

#to output things
#this will output line average and the plot
write(avg_x, "output/avg_x.txt")
plot(x, y)
abline(a, b, col = "purple")

dev.print(pdf, "toy_line_plot.pdf") #print off the plot

### if you include a new variable n = something in the beginning, you avoid the need to modify everything in the code

source("output/avg_x.txt") ## source is used to code behind the scenes
## basically you are asking r to run that from top to bottom i.e. not interactively

# scooping in R
# R has a way to look for what you ask. It will look first in your environment, and then it will
# look for functions in packages, etc.
# also recognizes functions vs vectors if a parenthesis is included
seq <- 10
seq

seq(1,10)
