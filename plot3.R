##-----------------------------------------------------------------------------
##                        Exploratory Data Analysis 
##                            Course Project 1 
##-----------------------------------------------------------------------------
##                                plot3.R
##-----------------------------------------------------------------------------
## This script will produce the image file plot3.png in directory ./EDAProject1 
##-----------------------------------------------------------------------------
##                           *** ATTENTION *** 
##          Must obtain and execute the script 'data-EDA-project1.R'  
##                    before running this function/script.
##-----------------------------------------------------------------------------

plot3 <- function() {
  
  png(filename = "./EDAProject1/plot3.png", 
      width = 480, 
      height = 480,
      units = "px", 
      bg = "transparent")
  
  plot(x = strptime(paste(dt_2d$Date, dt_2d$Time), "%d/%m/%Y %H:%M:%S"),
       y = as.numeric(dt_2d$Sub_metering_1), 
       type="l", 
       xlab="", 
       ylab="Energy sub metering")
  
  lines(x = strptime(paste(dt_2d$Date, dt_2d$Time), "%d/%m/%Y %H:%M:%S"), 
        y = as.numeric(dt_2d$Sub_metering_2), 
        col="Red")
  
  lines(x = strptime(paste(dt_2d$Date, dt_2d$Time), "%d/%m/%Y %H:%M:%S"), 
        y = as.numeric(dt_2d$Sub_metering_3), 
        col="Blue")
  
  legend("topright", 
         col=c("Black","Red","Blue"), 
         c("Sub_metering_1    ","Sub_metering_2    ", "Sub_metering_3    "),
         lty=c(1,1), 
         lwd=c(1,1))
  
  dev.off()
  
  paste("*** File plot3.png has been created in", paste0(getwd(), "./EDAProject1/"))
}
plot3()
