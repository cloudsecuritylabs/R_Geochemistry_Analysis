#read data from csv file
#this program produces a barplot from a tabular data
DT=read.csv("1_Ca_mg.csv",header=T,sep=",",stringsAsFactors=FALSE)

#set up plotting symbols and colors
par(pch=30, col="black") # plotting symbol and color 
par(mfrow=c(1,4)) # all plots on one page 
par(oma=c(4,2,2,2))

#Assign empty space around the graphs
par(mar=c(5,3,2,2)+1.0)

#define plot function
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

#now plot it. you can chance the upper limit as needed
myPlot(2,4,8000, names=c("Raw 1","Raw 2","Raw 3"))
myPlot(5,7,8000,names=c("3% LS 1","3% LS 2","3% LS 3"))
myPlot(8,10,8000,names=c(".75 Rate 1",".75 Rate 2",".75 Rate 3"))
myPlot(11,13,8000,names=c("1.1 Rate 1","1.1 Rate 2","1.1 Rate 3"))

#add some heading
mtext("Cumulative Calcium Release Over First 25 Weeks", outer = TRUE, cex = 0.9, line=1)
mtext("mg/Kg/week and cumulative", outer = TRUE, cex = 0.7, line=0)

######################################
# yOU CAN RUN THE CODE BELOW FOR MORE
# 
# myPlot(2,4,12000, names=c("Raw 1","Raw 2","Raw 3"))
# myPlot(5,7,12000,names=c("3% LS 1","3% LS 2","3% LS 3"))
# myPlot(8,10,12000,names=c(".75 Rate 1",".75 Rate 2",".75 Rate 3"))
# myPlot(11,13,12000,names=c("1.1 Rate 1","1.1 Rate 2","1.1 Rate 3"))
# mtext("Cumulative Calcium Release Over First 25 Weeks", outer = TRUE, cex = 0.9, line=1)
# mtext("mg/Kg/week and cumulative", outer = TRUE, cex = 0.7, line=0)

