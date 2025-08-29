setwd("C:\\Users\\it24101357\\Desktop\\IT24101357")
#Q1
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Times)
attach(Delivery_Times)
#Q2
hist(Delivery_Times$Delivery_Time, 
     breaks = seq(20, 70, by = 5), 
     main = "Histogram of Delivery Times", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Frequency", 
     right = TRUE)
#Q3
#The histogram shows a right-skewed distribution, with most delivery times concentrated between 30 and 40 minutes. There are fewer deliveries that take longer, as indicated by the tail on the right.
#Q4
freq <- hist(Delivery_Times$Delivery_Time, breaks = seq(20, 70, by = 5), plot = FALSE)$counts
cum_freq <- cumsum(freq)
plot(seq(22.5, 67.5, by = 5), cum_freq, type = 'l', 
     main = "Cumulative Frequency Polygon (Ogive)", 
     xlab = "Delivery Time (minutes)", 
     ylab = "Cumulative Frequency", 
     ylim = c(0, max(cum_freq)), 
     lwd = 2)

