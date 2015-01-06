DT=read.csv("4_Mg_mg.csv",header=T,sep=",",stringsAsFactors=FALSE)

par(pch=30, col="black") # plotting symbol and color 
par(mfrow=c(1,4)) # all plots on one page 
par(oma=c(4,2,2,2))
#Assign empty space around the graphs
par(mar=c(5,3,2,2)+1.0)

myPlot <- function(c1,c2,ylabupper, names ){
barplot(as.matrix(DT[c(c1:c2)]),
        col=rainbow(17),
        xlab="",
        names.arg=names,
        ylab="mg/Kg",
        ylim=c(0,ylabupper),
        las=3 # use to make the xaxis labels vertical
)

}

myPlot(2,4,1500, names=c("Raw 1","Raw 2","Raw 3"))
myPlot(5,7,1500,names=c("3% LS 1","3% LS 2","3% LS 3"))
myPlot(8,10,1500,names=c(".75 Rate 1",".75 Rate 2",".75 Rate 3"))
myPlot(11,13,1500,names=c("1.1 Rate 1","1.1 Rate 2","1.1 Rate 3"))
#mtext("Cumulative Magnesium Release", outer = TRUE, cex = 1.5)

mtext("Cumulative Magnesium Release Over First 25 Weeks", outer = TRUE, cex = 0.9, line=1)
mtext("mg/Kg/week and cumulative", outer = TRUE, cex = 0.7, line=0)
