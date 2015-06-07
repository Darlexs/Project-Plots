setwd("C:/Users/ALEXIS/Documents/ALEXIS/CURSEA/NIVEL 4-Exploratory Data Analysis/SEMANA 1")
Consumo<-read.table("household_power_consumption.txt",sep = ";",header = T)

Base=subset(Consumo,Consumo$Date=="1/2/2007"|Consumo$Date=="2/2/2007")

Base$Global_active_power=as.numeric(Base$Global_active_power)

png("plot2.png",width = 480,height = 480)
plot(Base$Global_active_power,type = "s",ylab = "Global Active Power (kilowatts)")
dev.off()