#2Step.(데이터분석) X2023_STB_survey의Gender1개의인자를가지고도수분포표를작성하세요.

table(X2023_STB_survey$Gender)

#3Step.(데이터분석) X2023_STB_survey의Gender1개의인자를가지고상대도수분포표를작성하세요

ECN <- table(X2023_STB_survey$Gender)
prop.table(ECN)
#.4Step.(데이터분석) X2023_STB_survey의Gender와Grade2개의인자를가지고교차표를작성하세요.

table(X2023_STB_survey$Gender, X2023_STB_survey$Grade)
#5 Step.(데이터분석) X2023_STB_survey의Nationality1개의인자를가지고막대그래프를작성하세요.

barplot(table(X2023_STB_survey$Nationality))

#6Step.(데이터분석) X2023_STB_survey의residential area 1개의인자를가지고(가로)막대그래프를작성하세요.

barplot(table(X2023_STB_survey$`residential area`), horiz=TRUE)

#7Step.(데이터분석) X2023_STB_survey의Gender와Grade2개의인자를가지고막대그래프를작성하세요.

table(X2023_STB_survey$Gender, X2023_STB_survey$Grade)
barplot(entry)

#8Step.(데이터분석) X2023_STB_survey의Grade1개의인자를가지고파이차트를작성하세요.

pie(table(X2023_STB_survey$Grade))

#9Step.(데이터분석) X2023_STB_survey의Age인자를가지고히스토그램을작성하세요.

hist(X2023_STB_survey$Age,main='age')
#10Step.(데이터분석) X2023_STB_survey의Grade별Age를비교하는박스플롯을만들어보세요. 그리고Grade별Age에대한기술통계분석을실시하여각박스플롯을비교설명하세요.

#기술통계분석 
summary(X2023_STB_survey)
boxplot(X2023_STB_survey)

boxplot(X2023_STB_survey$`Grade`, X2023_STB_survey$`Age`, main="Grade별Age비교", col="yellow", names = c("Grade","Age"))
#11Step.(데이터분석) X2023_STB_survey의Grade를X값으로Age를Y값으로하는산점도를만들어보세요.

plot(x=X2023_STB_survey$'Grade', y=X2023_STB_survey$'Age', xlab="학년", ylab="나이")
 