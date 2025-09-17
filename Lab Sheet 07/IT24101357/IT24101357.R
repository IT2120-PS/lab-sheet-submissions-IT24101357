setwd("C:\\Users\\LENOVO\\Desktop\\IT24101357")
getwd()

#Q1
min_total <- 40
a <- 10
b <- 25
p1 <- (b - a) / min_total
cat(sprintf("1) P(train arrives between 8:10 and 8:25) = %g (=%0.4f)\n", p1, p1))

#Q2
lambda <- 1/3
t <- 2 # hours
p2 <- 1 - exp(-lambda * t)
cat(sprintf("2) P(update takes at most 2 hours) = %g (=%0.6f)\n", p2, p2))

#Q3
#Part 1
mu <- 100
sigma <- 15
p3i <- 1 - pnorm(130, mean = mu, sd = sigma)
cat(sprintf("3(i) P(IQ > 130) = %g (=%0.6f)\n", p3i, p3i))

#Part 2
q95 <- qnorm(0.95, mean = mu, sd = sigma)
cat(sprintf("3(ii) 95th percentile IQ score = %g (=%0.3f)\n", q95, q95))