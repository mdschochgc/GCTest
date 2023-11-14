#   November 14 

mysamp <- sample(1:100, 50, replace = TRUE)
sum ( mysamp <= 30) /50 

#2
myflips <- sample ( c("HEADS", "TAILS"), 400, replace = TRUE)
myflips
sum (myflips == "HEADS") /400


#3
myguess <- sample ( c("A", "B", "C", "D"), 400, replace = TRUE)
myguess
sum (myguess == "A") /400

#4
myflips <- rep(0, 2000)
for ( j in 1:2000)
{
  mysamp <- sample ( c("HEADS", "TAILS"), 50, replace = TRUE)
  myflips[j] <- sum (mysamp == "HEADS") /50
}
mean(myflips)
sd(myflips)
fliphist <- hist(myflips, breaks = 30, labels = TRUE)
upper2sd = mean(myflips) + 2 * sd(myflips)
lower2sd =  mean(myflips) - 2  * sd(myflips)
abline(v = mean(myflips), lwd = 2, col = "RED" )
abline(v = upper2sd, lwd = 2, col = "BLUE" )
abline(v = lower2sd, lwd = 2, col = "BLUE" )


#7 
myflips <- rep(0, 2000)
for ( j in 1:2000)
{
  mysamp <- sample ( c("HEADS", "TAILS"), 400, replace = TRUE)
  myflips[j] <- sum (mysamp == "HEADS") /400
}
mean(myflips)
sd(myflips)
fliphist <- hist(myflips, breaks = 20, labels = TRUE)
upper2sd = mean(myflips) + 2  * sd(myflips)
lower2sd =  mean(myflips) - 2  * sd(myflips)
abline(v = mean(myflips), lwd = 2, col = "RED" )
abline(v = upper2sd, lwd = 2, col = "BLUE" )
abline(v = lower2sd, lwd = 2, col = "BLUE" )


