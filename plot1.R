#Load the data

electricPowerConsumptionDF<-read.csv("data/household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")
electricPowerConsumptionDF$Date<-as.Date(electricPowerConsumptionDF$Date,format="%d/%m/%Y")
electricPowerConsumptionDF<-subset(electricPowerConsumptionDF, Date==as.Date("2007-02-02")|Date==as.Date("2007-02-01"))


#Plot 
png(filename = "plot1.png",width = 480,height = 480,bg = "transparent")
hist(electricPowerConsumptionDF$Global_active_power,col = "red",main = "Global Activr Power",xlab = "Global Active Power (kilowatts)")
dev.off()
