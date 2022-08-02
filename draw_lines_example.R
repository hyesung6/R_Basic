f <- function(x){x^2}
x <- 1:100
plot(x, f(x), type='l')

f <- function(x){x^2}
x <- seq(-5, 5, .1)
plot(x, f(x), type='l')

f <- function(x){1/x}
x <- seq(-5, 5, .05)
plot(x, f(x), type='l')

f <- function(x){1/(1+exp(-x))}
x <- seq(-5, 5, .05)
plot(x, f(x), type='l')

x <- seq(0, 11)
y <- dbinom(x, 10, 1/2)
plot(x,y)