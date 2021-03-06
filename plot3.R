####plot 3
EPC <- read.table("./household_power_consumption.txt", header=TRUE, sep=";", 
                  dec=".", na.strings = "?", colClasses=c("character", "character",
                                                          rep("numeric", 7)))
EPC2 <- subset(EPC, Date == "1/2/2007" | Date == "2/2/2007")

datetime<-as.POSIXct(paste(EPC2$Date, EPC2$Time), format="%d/%m/%Y %H:%M:%S")

png("plot3.png", width=480, height=480)
plot(datetime, EPC2$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, EPC2$Sub_metering_2, type="l", col="red")
lines(datetime, EPC2$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()
