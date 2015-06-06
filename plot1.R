##-----------------------------------------------------------------------------
##                        Exploratory Data Analysis 
##                            Course Project 1 
##-----------------------------------------------------------------------------
##                                plot1.R
##-----------------------------------------------------------------------------
## This script will produce the image file plot1.png in directory ./EDAProject1 
##-----------------------------------------------------------------------------
##                           *** ATTENTION *** 
##          Must obtain and execute the script 'data-EDA-project1.R'  
##                    before running this function/script.
##-----------------------------------------------------------------------------

plot1 <- function() {
  
  png(filename = "./EDAProject1/plot1.png", 
      width = 480, 
      height = 480,
      units = "px", 
      bg = "transparent")
  
  hist(as.numeric(dt_2d$Global_active_power), 
       main = "Global Active Power", 
       col  = "Red", 
       xlab = "Global Active Power (kilowatts)")
  
  dev.off()
  
  paste("*** File plot1.png has been created in", paste0(getwd(), "./EDAProject1/"))
}

plot1()
