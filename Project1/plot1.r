data=read.table(file="household_power_consumption.txt",sep=";",head=TRUE)
data$Date<-as.character(data$Date)
data1<-data[data$Date=="1/2/2007",]
data2<-data[data$Date=="2/2/2007",]
data3<-rbind(data1,data2)
png(filename="plot1.png")
hist(as.numeric(data3$Global_active),main="Global Active Power",xlab="Global Active Power (kilowatts)", ylab="Frenquency",col="red")
dev.off()
