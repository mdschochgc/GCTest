# ORIGINAL from Roger Palay copyright 2016-01-31
# Saline, MI 48176
#
# SMALL EDIT BY MARTIN SCHOCH FOR GC DATA SCIENCE - JULY 2023

##  The following function, dot_plot, is a simple-minded attempt
##  to get R to be able to create a dot plot from discrete, integer values.

gcdot_plot<-function( this_list, ... )
{ 
  ## the first thing to do is to just sort the list into a local copy
  
  lcl_list <- sort( this_list )
  
  ## then we want a second list that is just as long as was the
  ## original list, because, in that second copy we will place the
  ## vertical position of the associated value in the sorted copy
  
  lcl_count <- lcl_list
  
  ## then, to start, we begin at the first item in the sorted list 
  ## It will have  avertical position of 1
  cur_val <- lcl_list[1]
  m <- 1
  lcl_count[1]<-1
  
  ## now we just move through the rest of the sorted
  ## list and if we are at the same value then we go up one 
  ## vertical level, but if we are at a new value we reset
  ## the vertical position to 1
  
  for (i in 2:length(lcl_list))
  { 
    x <- lcl_list[i]
    if ( x==cur_val )
    { m <- m+1
    lcl_count[ i ] <- m
    }
    else
    {
      cur_val <- x
      m <- 1
      lcl_count[i] <- m
    }
  }
  
  ## once we are done with that, we can just do a scatter plot on
  ## the two vectors that we have created.
  
  
  plot( lcl_list,lcl_count, ylab = "Count", ...)
}