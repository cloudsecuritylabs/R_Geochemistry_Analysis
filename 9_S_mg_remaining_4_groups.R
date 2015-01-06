DT=read.csv("sulfate_remaining.csv",header=T,sep=",",stringsAsFactors=FALSE)
DT
names(DT)
DT[1]
x=1:26

attach(DT)

par(pch=22, col="black") # plotting symbol and color 
par(mfrow=c(2,2)) # all plots on one page 

#plot raw
plot(x, DT$raw1, type="l", lwd=2, col="blue", ylim=c(50000, 80000), xaxs="i", yaxs="i", xlab="Weeks", ylab="Sulfur remaining (mg)")
lines(x,DT$raw2, lwd=2, col="red")
lines(x,DT$raw3, lwd=2, col="Black")
legend("bottomleft", legend=c("Raw1","Raw2", "Raw3"), lwd=c(2,2), col=c("blue","red","Black"))

#plot 3%
plot(x, DT$X3pcLS1, type="l", lwd=2, col="blue", ylim=c(50000, 80000), xaxs="i", yaxs="i", xlab="Weeks", ylab="Sulfur remaining (mg)")
lines(x,DT$X3pcLS2, lwd=2, col="red")
lines(x,DT$X3pcLS3, lwd=2, col="Black")
legend("bottomleft", legend=c("3% LS1","3% LS2", "3% LS3"), lwd=c(2,2), col=c("blue","red","Black"))

#plot .75 rate
plot(x, DT$X.75R1, type="l", lwd=2, col="blue", ylim=c(50000, 80000), xaxs="i", yaxs="i", xlab="Weeks", ylab="Sulfur remaining (mg)")
lines(x,DT$X.75R2, lwd=2, col="red")
lines(x,DT$X.75R3, lwd=2, col="Black")
legend("topleft", legend=c(".75 Rate 1",".75 Rate 2", ".75 Rate 3"), lwd=c(2,2), col=c("blue","red","Black"))


#plot 1.1 rate
plot(x, DT$X1.1R1, type="l", lwd=2, col="blue", ylim=c(50000, 80000), xaxs="i", yaxs="i", xlab="Weeks", ylab="Sulfur remaining (mg)")
lines(x,DT$X1.1R2, lwd=2, col="red")
lines(x,DT$X1.1R3, lwd=2, col="Black")
legend("topleft", legend=c("1.1 Rate 1","1.1 Rete 2", "1.1 Rate 3"), lwd=c(2,2), col=c("blue","red","Black"))


###################################################
# plot at a different scale
###################################################

#plot raw
plot(x, DT$raw1, type="l", lwd=2, col="blue", ylim=c(5000, 120000), xaxs="i", yaxs="i", xlab="Weeks", ylab="Sulfur remaining (mg)")
lines(x,DT$raw2, lwd=2, col="red")
lines(x,DT$raw3, lwd=2, col="Black")
legend("bottomleft", legend=c("Raw1","Raw2", "Raw3"), lwd=c(2,2), col=c("blue","red","Black"))

#plot 3%
plot(x, DT$X3pcLS1, type="l", lwd=2, col="blue", ylim=c(5000, 120000), xaxs="i", yaxs="i", xlab="Weeks", ylab="Sulfur remaining (mg)")
lines(x,DT$X3pcLS2, lwd=2, col="red")
lines(x,DT$X3pcLS3, lwd=2, col="Black")
legend("bottomleft", legend=c("3% LS1","3% LS2", "3% LS3"), lwd=c(2,2), col=c("blue","red","Black"))

#plot .75 rate
plot(x, DT$X.75R1, type="l", lwd=2, col="blue", ylim=c(5000, 120000), xaxs="i", yaxs="i", xlab="Weeks", ylab="Sulfur remaining (mg)")
lines(x,DT$X.75R2, lwd=2, col="red")
lines(x,DT$X.75R3, lwd=2, col="Black")
legend("topleft", legend=c(".75 Rate 1",".75 Rate 2", ".75 Rate 3"), lwd=c(2,2), col=c("blue","red","Black"))


#plot 1.1 rate
plot(x, DT$X1.1R1, type="l", lwd=2, col="blue", ylim=c(5000, 120000), xaxs="i", yaxs="i", xlab="Weeks", ylab="Sulfur remaining (mg)")
lines(x,DT$X1.1R2, lwd=2, col="red")
lines(x,DT$X1.1R3, lwd=2, col="Black")
legend("topleft", legend=c("1.1 Rate 1","1.1 Rate 2", "1.1 Rate 3"), lwd=c(2,2), col=c("blue","red","Black"))
