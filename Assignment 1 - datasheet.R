mydata <- read.csv(file.choose())
attach(mydata)
mydata

head(mydata)
df1(mydata)

###rowSums and averaging
subjects <- data.frame ( math, eng, geog, hist, sci)
total <- rowSums ( subjects)
total


avg <- total/5
avg


percent <- total/500*100
percent
#socialscience
socialscience <- data.frame (geog, hist)
totalss <- rowSums(socialscience)
totalss

avg <- totalss/5
avg
percent <- totalss/500*100
percent

 #mathsci
mathsci <- data.frame( math, sci)
totalmathsci <- rowSums (mathsci)
totalmathsci

avgmathsci <- totalmathsci/5
avgmathsci

percentmathsci <- totalmathsci/500*100
percentmathsci

#languages 
lang <- data.frame ( eng, kannada)
totallang <- rowSums (lang)
totallang

avglang <- totallang/5
avglang

percentlang <- totallang/500*100
percentlang