setwd("C:/Users/ALEXIS/Documents/ALEXIS/CURSEA/NIVEL 4-Exploratory Data Analysis/SEMANA 1")
Consumo<-read.table("household_power_consumption.txt",sep = ";",header = T)

Base=subset(Consumo,Consumo$Date=="1/2/2007"|Consumo$Date=="2/2/2007")

Base$Sub_metering_1=as.numeric(Base$Sub_metering_1)
Base$Sub_metering_2=as.numeric(Base$Sub_metering_2)
Base$Sub_metering_3=as.numeric(Base$Sub_metering_3)


png("plot3.png",width=480,height = 480)
with(Base,plot(Sub_metering_1,type = "s",col="black",ylab = "Energy Sub Metering"))
with(subset(Base,Base$Sub_metering_2<14),lines(Sub_metering_2,col="orangered2"))
with(Base,lines(Base$Sub_metering_3,col="blue"))
legend("topright",lty = 1,col=c("black","orangered2","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex=0.8)
dev.off()