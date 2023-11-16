#0 ********* SETUP ELEMENTS
load(url("https://github.com/mdschochgc/GCTest/blob/main/data/bowl.rda?raw=true"))
source("https://raw.githubusercontent.com/mdschochgc/GCTest/main/data/plot_ci.R")





# 1 ******SAMPLING COIN FLIPS - PROBABILITY OF HEADS********************

myflips <- rep(0, 2000)
for ( j in 1:2000)
{
  mysamp <- sample ( c("HEADS", "TAILS"), 400, replace = TRUE)
  myflips[j] <- sum (mysamp == "HEADS") /400
}
mean(myflips)
sd(myflips)
fliphist <- hist(myflips, breaks = 30, labels = TRUE)
upper2sd = mean(myflips) + 2 * sd(myflips)
lower2sd =  mean(myflips) - 2  * sd(myflips)
abline(v = mean(myflips), lwd = 2, col = "RED" )
abline(v = upper2sd, lwd = 2, col = "BLUE" )
abline(v = lower2sd, lwd = 2, col = "BLUE" )



#2      *********************************
mean50 <- rep(0,2000) 
for ( j in 1:2000)  {
  mean50[j] = mean(sample(ames$SalePrice, 50 ))
}   
mean(mean50)
sd(mean50)
hist(mean50, breaks = 30, labels = TRUE)
upper <-  mean(mean50) + 2 * sd(mean50) 
lower <-  mean(mean50) - 2 * sd(mean50)
abline(v= mean(ames$SalePrice), col = "RED", lwd = 2)
abline(v= lower, col = "BLUE", lwd = 2)
abline(v= upper, col = "BLUE", lwd = 2)



# ******************************************
  
  
#3  ******* CONFIDENCE INTERVAL FOR POPULATION MEANS **********
  labsamp_means50 <- rep (NA,100)
labsamp_sd50 <- rep (NA,100)
for (i in 1:100) {
  labsamp <- sample(ames$SalePrice,50)
  labsamp_means50[i] = mean(labsamp)
  labsamp_sd50[i] = sd(labsamp)
}
lower_vector <- labsamp_means50 - 2 * labsamp_sd50 / sqrt(50)
upper_vector <- labsamp_means50 + 2 * labsamp_sd50 / sqrt(50)
plot_ci(lower_vector, upper_vector, mean(ames$SalePrice))
abline(v = mean(ames$SalePrice), col = "blue", lwd = 4)


# ******************************************************


#4    CONFIDENCE INTERVAL FOR PROPORTIONS   ********************
myheads <- rep(0, 100)
myheadssd <- rep(0,100)
for ( j in 1:100) 
{
  mysamp <- sample ( c(1,0), 50, replace = TRUE)
  myheads[j] <- sum (mysamp) /50
  myheadssd[j] <- sd(mysamp)
}
mean(myheads)
sd(myheads)
fliphist <- hist(myheads, breaks = 30, labels = TRUE)
upper = myheads + 2 * myheadssd/sqrt(50)
lower =  myheads - 2  * myheadssd/sqrt(50)
plot_ci(lower,upper,.50)
abline(v = 0.50, lwd = 2, col = "BLUE")


# *************************************


