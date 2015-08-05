## The code below constructs a histogram plot of Global Active Power

source("load_data.R")
powerdata <- load_data()

png("plot1.png", width = 480, height = 480, units = "px")
with(powerdata, hist(Global_active_power, 
                     col = "red",
                     main = "Global Active Power",
                     xlab = "Global Active Power (kilowatts)", 
                     ylim = c(0, 1200)))
dev.off()