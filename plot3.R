#Load the data

electricPowerConsumptionDF<-read.csv("data/household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
electricPowerConsumptionDF$Date<-as.Date(electricPowerConsumptionDF$Date,format="%d/%m/%Y")
electricPowerConsumptionDF<-subset(electricPowerConsumptionDF, Date==as.Date("2007-02-02")|Date==as.Date("2007-02-01"))

#Plot
dtime<-strptime(paste(electricPowerConsumptionDF$Date,electricPowerConsumptionDF$Time),"%Y-%m-%d %H:%M:%S")


png(filename = "plot3.png",width = 480,height = 480,bg = "transparent")

plot(x=dtime,y=electricPowerConsumptionDF$Sub_metering_1,type="n",xlab="",ylab = "Energy sub metering")
points(dtime,electricPowerConsumptionDF$Sub_metering_1,col="black",type="l")
points(dtime,electricPowerConsumptionDF$Sub_metering_2,col="red",type="l")
points(dtime,electricPowerConsumptionDF$Sub_metering_3,col="blue",type="l")
legend("topright",col=c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = c(1, 1, 1))

dev.off()