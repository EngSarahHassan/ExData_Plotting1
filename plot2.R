#Load the data

electricPowerConsumptionDF<-read.csv("data/household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
electricPowerConsumptionDF$Date<-as.Date(electricPowerConsumptionDF$Date,format="%d/%m/%Y")
electricPowerConsumptionDF<-subset(electricPowerConsumptionDF, Date==as.Date("2007-02-02")|Date==as.Date("2007-02-01"))

#Plot
dtime<-strptime(paste(electricPowerConsumptionDF$Date,electricPowerConsumptionDF$Time),"%Y-%m-%d %H:%M:%S")
png(filename = "plot2.png",width = 480,height = 480,bg = "transparent")
plot(dtime,electricPowerConsumptionDF$Global_active_power,type="l",xlab = "",ylab = "Global Active Power (kilowatts)")
dev.off()
