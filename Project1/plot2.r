data=read.table(file="household_power_consumption.txt",sep=";",head=TRUE)
data$Date<-as.character(data$Date)
data1<-data[data$Date=="1/2/2007",]
data2<-data[data$Date=="2/2/2007",]
data3<-rbind(data1,data2)
data3$TD<-strptime(paste(data3$Date,data3$Time,sep=","), "%d/%m/%Y,%H:%M:%S")
png(filename="plot2.png")
plot(y=as.numeric(data3$Global_active),x=data3$TD, type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.off()