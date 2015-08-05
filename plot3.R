## The code below constructs a line chart of Energy Submeterings

source("load_data.R")
powerdata <- load_data()

png("plot3.png", width = 480, height = 480, units = "px")
with(powerdata,
     {plot(x = timestamp, y = Sub_metering_1,
           xlab = "",
           ylab = "Energy Submetering (kilowatts)",
           type = "l");
         lines(x = timestamp, y = Sub_metering_2,
               type = "l",
               col = "red");
         lines(x = timestamp, y = Sub_metering_3,
               type = "l",
               col = "blue");
         legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
                lty = 1,
                lwd = 2,
                col=c("black", "red", "blue"))
     })
dev.off()