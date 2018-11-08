# online dataset, comparison of budged and domestic gross
#reading dataframe
data = read.csv("moviedata.csv", header = TRUE, stringsAsFactors= FALSE )
head(data)
#load the needed packages
library(ggplot2)
library(gridBase)
library(gridExtra)
#get data into the correct forms
data$Budget = as.numeric(as.character(data$Budget))
data$Domestic.Gross = as.numeric(as.character(data$Domestic.Gross))
data$Movie = as.factor(data$Movie)
#make the plots 
  ggplot(data= data, aes(x = Budget, y = Domestic.Gross)) + 
  geom_point() + 
  stat_smooth(method = "lm", se = F)


#create object with the data
sample = read.table("data.txt", header = TRUE, stringsAsFactors = FALSE, sep = ",")
#create bar plot
b = ggplot(data = sample)
b+geom_bar(aes(x=as.factor(region), y=observations), stat = "summary", fun.y ="mean", fill ='black', color = 'black') + theme_classic()
#create scatter plot with jitter
s = b +geom_jitter(aes(x = as.factor(region), y = observations))
s