#Reading, naming and subsetting power consumption data

HPC <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
HPC_1 <- subset(HPC, Date %in% c("1/2/2007","2/2/2007"))

# Transforming the Date and Time variables
HPC_1$Date <- as.Date(HPC_1$Date, format="%d/%m/%Y")
date_time <- paste(as.Date(HPC_1$Date), HPC_1$Time)
HPC_1$Datetime <- as.POSIXct(date_time)

## Plot 2
with(HPC_1, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})
