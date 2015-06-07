library(lubridate)

setwd("C:/Users/ALEXIS/Documents/ALEXIS/CURSEA/NIVEL 4-Exploratory Data Analysis/SEMANA 1")
Consumo<-read.table("household_power_consumption.txt",sep = ";",header = T)

Base=subset(Consumo,Consumo$Date=="1/2/2007"|Consumo$Date=="2/2/2007")

Base$Global_active_power=as.numeric(Base$Global_active_power)
Base$Global_reactive_power=as.numeric(Base$Global_reactive_power)
Base$Voltage=as.numeric(Base$Voltage)
Base$Sub_metering_1=as.numeric(Base$Sub_metering_1)
Base$Sub_metering_2=as.numeric(Base$Sub_metering_2)
Base$Sub_metering_3=as.numeric(Base$Sub_metering_3)

png("plot4.png",width = 480,height = 480)
par(mfcol = c(2,2))
  plot(Base$Global_active_power,type = "s",ylab = "Global Active Power (kilowatts)")

  with(Base,plot(Sub_metering_1,type = "s",col="black",ylab = "Energy Sub Metering"))
  with(subset(Base,Base$Sub_metering_2<14),lines(Sub_metering_2,col="orangered2"))
  with(Base,lines(Base$Sub_metering_3,col="blue"))
  legend("topright",lty = 1,col=c("black","orangered2","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.5)

  plot(Base$Voltage,type = "s",ylab = "Voltage", xlab="DateTime")

  plot(Base$Global_reactive_power,type = "s", ylab="Global_reactive_power")
dev.off()
