load(url("https://github.com/mdschochgc/GCTest/blob/main/data/sept30.rda?raw=true"))

load(url("https://github.com/mdschochgc/GCTest/blob/main/data/sept14b.Rda?raw=true"))

load(url("https://github.com/mdschochgc/GCTest/blob/main/data/nov03.rda?raw=true"))

load(url("https://github.com/mdschochgc/GCTest/blob/main/data/nov17.rda?raw=true"))

load(url("https://github.com/mdschochgc/GCTest/blob/main/data/nov28.rda?raw=true"))

source("https://raw.githubusercontent.com/mdschochgc/GCTest/main/data/mds_plotci.R")

sample_means50 <- rep(NA,5000)
for(i in 1:5000){
  labsamp <- sample_n(ames2, 50)
  sample_means50[i] <- mean(labsamp$SalePrice)
}
hist(sample_means50, breaks = 36, freq = FALSE)
abline(v = 180, lwd = 2 ) 
abline (v = mean(sample_means50) - 2 * sd(sample_means50), lwd = 2, col = "blue" )
abline (v = mean(sample_means50) + 2 * sd(sample_means50), lwd = 2, col = "blue" )

sum ( sample_means50 - 22.58 < 180 & 180 < sample_means50 + 22.58 ) 
sum ( sample_means50 - 22.58 < 180 & 180 < sample_means50 + 22.58 ) / length(sample_means50)

x = seq(140,240, length = 120)
y = dnorm(x,mean = 180, sd = 11.29)
lines(x,y, lwd = 2 )



