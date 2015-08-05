## This code construct 4 subplots

source("load_data.R")
powerdata <- load_data()

png("plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2,2), mar = c(4,4,1.5,1.5) + 0.1)

with(powerdata, {
    # subplot 1
    plot(x = timestamp, y = Global_active_power,
         xlab = "",
         ylab = "Global Active Power",
         type = "l")
    
    # subplot 2
    plot(x = timestamp, y = Voltage,
         xlab = "datetime",
         ylab = "Voltage",
         type = "l")
    
    # subplot 3
    
    plot(x = timestamp, y = Sub_metering_1,
         xlab = "",
         ylab = "Energy sub metering",
         type = "l");
    lines(x = timestamp, y = Sub_metering_2,
          type = "l",
          col = "red");
    lines(x = timestamp, y = Sub_metering_3,
          type = "l",
          col = "blue");
    legend("topright", 
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           bty = "n",
           lwd = 1.5,
           xjust = 1,
           col=c("black", "red", "blue"))
    
    # subplot 4
    plot(x = timestamp, y = Global_reactive_power, 
         xlab = "datetime",
         type = "l")
})
dev.off()