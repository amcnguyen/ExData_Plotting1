##-----------------------------------------------------------------------------
##                        Exploratory Data Analysis 
##                            Course Project 1 
##-----------------------------------------------------------------------------
##                                plot4.R
##-----------------------------------------------------------------------------
## This script will produce the image file plot4.png in directory ./EDAProject1 
##-----------------------------------------------------------------------------
##                           *** ATTENTION *** 
##          Must obtain and execute the script 'data-EDA-project1.R'  
##                    before running this function/script.
##-----------------------------------------------------------------------------

plot4 <- function() {
  
  png(filename = "./EDAProject1/plot4.png", 
      width = 480, 
      height = 480,
      units = "px", 
      bg = "White")
  
  ## Define layout ------------------------------------------------------------
  
  par(mfrow=c(2,2))
  
  ## Plot1 on layout position (1,1)
  plot(x = strptime(paste(dt_2d$Date, dt_2d$Time), "%d/%m/%Y %H:%M:%S"), 
       y = as.numeric(dt_2d$Global_active_power),
       type = "l", 
       xlab = "", 
       ylab = "Global Active Power")
  
  ## Plot2 on layout position (1,2) -------------------------------------------
  
  plot(x = strptime(paste(dt_2d$Date, dt_2d$Time), "%d/%m/%Y %H:%M:%S"), 
       y = as.numeric(dt_2d$Voltage),
       type = "l", 
       xlab = "datetime", 
       ylab = "Voltage")
  
  ## Plot3 on layout position (2,1) ------------------------------------------
  
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
         c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
         lty=c(1,1),  ## try lty = 2:6 i.e. c("44", "13", "1343", "73", "2262").
         lwd=c(1,1),
         bty="n",     ## Removes border around the legend
         cex=.5)      ## cex shrinks the text (add spaces after labels)
  
  # Plot4 on layout position (2,2) --------------------------------------------
  
  plot(x = strptime(paste(dt_2d$Date, dt_2d$Time), "%d/%m/%Y %H:%M:%S"), 
       y = as.numeric(dt_2d$Global_reactive_power),
       type = "l", 
       xlab = "datetime", 
       ylab = "Global_reactive_power")
  
  dev.off()
  
  paste("*** File plot4.png has been created in", paste0(getwd(), "./EDAProject1/"))
}
plot4()
