## The code below constructs a line chart of Global Active Power

source("load_data.R")
powerdata <- load_data()

png("plot2.png", width = 480, height = 480, units = "px")
with(powerdata,
     {plot(x = timestamp, y = Global_active_power,
           xlab = "",
           ylab = "Global Active Power (kilowatts)",
           type = "n");
      lines(x = timestamp, y = Global_active_power,
            type = "l")
     })
dev.off()