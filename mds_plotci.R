mds_plotci <- function(lo, hi, m){
  par(mar=c(2, 1, 1, 1), mgp=c(2.7, 0.7, 0))
  k <- 100
  ci.max <- max(rowSums(matrix(c(-1*lo,hi),ncol=2)))
  
  xR <- m + ci.max*c(-1, 1)
  yR <- c(0, 41*k/40)
  
  plot(xR, yR, type='n', xlab='', ylab='', axes=FALSE)
  abline(v=m, lty=2, col='#00000088')
  axis(1, at=m, paste("mu = ",round(m,4)), cex.axis=1.15)
  #axis(2)
  for(i in 1:k){
    x <- mean(c(hi[i],lo[i]))
    ci <- c(lo[i],hi[i])
    if(contains(lo[i],hi[i],m)==FALSE){
      col <- "#F05133"
      points(x, i, cex=1.4, col=col)
      #		  points(x, i, pch=20, cex=1.2, col=col)
      lines(ci, rep(i, 2), col=col, lwd=5)
    }
    col <- 1
    points(x, i, pch=20, cex=1.2, col=col)
    lines(ci, rep(i, 2), col=col)
  }
  par(mar=c(5.1, 4.1, 4.1, 2.1), mgp=c(3, 1, 0) )
}
