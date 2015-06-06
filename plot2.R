##-----------------------------------------------------------------------------
##                        Exploratory Data Analysis 
##                            Course Project 1 
##-----------------------------------------------------------------------------
##                                plot2.R
##-----------------------------------------------------------------------------
## This script will produce the image file plot2.png in directory ./EDAProject1 
##-----------------------------------------------------------------------------
##                           *** ATTENTION *** 
##          Must obtain and execute the script 'data-EDA-project1.R'  
##                    before running this function/script.
##-----------------------------------------------------------------------------

plot2 <- function() {
  
  png(filename = "./EDAProject1/plot2.png", 
      width = 480, 
      height = 480,
      units = "px", 
      bg = "transparent")
  
  plot(x = strptime(paste(dt_2d$Date, dt_2d$Time), "%d/%m/%Y %H:%M:%S"), 
       y = as.numeric(dt_2d$Global_active_power),
       type = "l",
       xlab = "",
       ylab = "Global Active Power (kilowatts)")
  
  dev.off()
  
  paste("*** File plot2.png has been created in", paste0(getwd(), "./EDAProject1/"))
}

plot2()
