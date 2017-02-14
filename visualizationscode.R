path<-"C:/Users/Rahul Kumar/Desktop/Wine Quality Analysis"
setwd(path)
data<-read.csv("winequality-red.csv",sep=";",header=TRUE)
ggplot(data=data, aes(as.factor(quality),alcohol))+geom_boxplot()+xlab("Quality") +ylab("Alcohol")
ggplot(data=data, aes(quality,alcohol))+geom_jitter()+geom_smooth(method='lm')
ggplot(data=data, aes(as.factor(quality),residual.sugar))+geom_boxplot()+xlab("Quality") +ylab("Residual Sugar")
ggplot(data=data, aes(quality,residual.sugar))+geom_jitter()+geom_smooth(method='lm')
ggplot(data=data, aes(as.factor(quality),density))+geom_boxplot()+xlab("Quality")+ylab("Density")
ggplot(data=data, aes(quality,density))+geom_jitter()+geom_smooth(method='lm')

