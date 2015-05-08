####plot 2
EPC <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", 
                  dec=".", na.strings = "?", colClasses=c("character", "character",
                                                          rep("numeric", 7)))
EPC2 <- subset(EPC, Date == "1/2/2007" | Date == "2/2/2007")
datetime<-as.POSIXct(paste(EPC2$Date, EPC2$Time), format="%d/%m/%Y %H:%M:%S")

png("plot2.png", width=480, height=480)
plot(datetime, EPC2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()