## The function below reads the given large dataset, extracts the data for the
## selected dates, and saves the subset as a data table. It then adds a timestamp
## column containing date and time in POSIXlt format.

load_data <- function() {
    library(dplyr)
    classes <- c(rep("character", 2), rep("numeric", 7))
    powerdata <- read.table("./data/household_power_consumption.txt", 
                            header = TRUE, 
                            sep=";", 
                            na.strings = "?", 
                            colClasses = classes)
    powerdata <- mutate(powerdata, Date = as.Date(Date, format = "%d/%m/%Y"))
    powerdata <- powerdata %>% filter(Date == "2007-02-01" | Date == "2007-02-02")
    
    powerdata$timestamp <- strptime(with(powerdata, paste(Date, Time, sep = " ")),
                                         format = "%Y-%m-%d %H:%M:%S")
    return(powerdata)
}