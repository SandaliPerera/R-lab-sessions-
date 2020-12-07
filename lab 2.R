#1st 
data_bw=read.csv("G:/My Drive/LMS/IS 2105 Ucsc/2020/Lab/Session 2/Lab session 2/BIRTHWEIGHT.csv", header = TRUE)
nrow(data_bw)
data_bw

#3rd 
attach(data_bw)
counts <- table(LOW)
barplot(counts, main="Low Birth Weight Distribution", ylab="Birth Count", xlab="Low Birth Weight", names.arg=c("No","Yes"))

#4th
str(data_bw$RACE)
data_bw$RACE= as.factor(data_bw$RACE)
#class(data_bw$RACE)  #check
levels(data_bw$RACE) = c ("white","black","other")
count=table(data_bw$RACE)
count

percent=count/nrow(data_bw)
percent

piechart=pie(count,labels=paste(c("White","Black","Other"),round((percent*100),1),"%"),col=rainbow(3),main="Race Distribution",radius=1)
legend("topright",c("white","black","other"),cex=0.8,fill=rainbow(3))

#5th
stem(AGE, scale=2) 
# or stem(data_bw$AGE, scale=2)

#6th
hist(AGE, breaks=20)

#12th
boxplot(LWT~RACE,data=data_bw, main="Distribution of LWT by RACE",xlab="RACE", ylab="LWT")

#13th
mean(LWT)
median(LWT)
hist(LWT, nclass=20)

#14th
summary(LWT)
IQR(LWT)
l<-110-IQR(LWT)*1.5
H<-140+IQR(LWT)*1.5