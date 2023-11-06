
    mean10 <- rep(0,2000)
   for ( j in 1:500)  {
     
     mean10[j] = mean(sample(ames$SalePrice, 10 ))
   }
     mean10 <- round(mean10,0)
     hist(mean10, breaks = 30, labels = TRUE)
     mean(mean10)
     sd(mean10)