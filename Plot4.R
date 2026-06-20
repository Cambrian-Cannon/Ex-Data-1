myData<-read.csv("Required.csv")
myData$Time<-strptime(myData$Time,"%Y-%m-%d %H:%M:%S")
png("Plot4.png",480,480,res=100)
par(mfrow=c(2,2))
plot(myData$Time,myData$Global_active_power,ylab = "Global Active Power(kW)",xlab="Time",type='l')
plot(myData$Time,myData$Voltage,ylab="Voltage(V)",xlab="Time",type='l')
plot(myData$Time,myData$Sub_metering_1,xlab = "Time",ylab="Energy Sub Metering(Wh)",type='l'
     ,col="black")
points(myData$Time ,myData$Sub_metering_2 ,col="red",type='l')
points(myData$Time ,myData$Sub_metering_3 ,col="blue",type='l')
legend("topright",c("Sub Meter 1","Sub Meter 2","Sub Meter 3"),col=c("black","red","blue"),pch = rep(16,3),
       cex=c(0.5,0.5))

plot(myData$Time,myData$Global_reactive_power,ylab="Global Reactive Power(kW)",xlab="Time",type='l')
dev.off()