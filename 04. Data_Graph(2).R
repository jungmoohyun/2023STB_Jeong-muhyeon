#히스토그램작성
hist(finedust$`3_ultrafine dust`, main="서울시서대문구2020년1월초미세먼지측정분포", col=terrain.colors(12))

#히스토그램에 확률밀도선 추가
hist(finedust$`3_ultrafine dust`, main="서울시서대문구2020년1월초미세먼지측정분포", col=terrain.colors(12), freq= FALSE)

lines(density(finedust$`3_ultrafine dust`), lwd=2)

#박스플롯
#쓸 때 3주차의 기술통계분석 동봉하여 제출
boxplot(finedust$`3_fine dust`, main="야식업의2020년1월미세먼지발생현황", col="yellow")

#박스플롯 2개
boxplot(finedust$`3_fine dust`, finedust$`7_fine dust`, main="업종별2020년1월미세먼지발생현황", col="yellow", names = c("야식업","중식"))

#산점도
plot(x=finedust$`3_fine dust`, y=finedust$`3_ultrafine dust`, xlab="미세먼지", ylab="초미세먼지", main="미세먼지와초미세먼지의변화")

#산점도 아이콘 바꾸기
plot(x=finedust$`3_fine dust`, y=finedust$`3_ultrafine dust`, xlab="미세먼지", ylab="초미세먼지", main="미세먼지와초미세먼지의변화", pch=24, col="red", bg="yellow", cex=1.5)

#산점도 변화
plot(x=finedust$`3_fine dust`, y=finedust$`3_ultrafine dust`, xlab="미세먼지", ylab="초미세먼지", main="미세먼지와초미세먼지의변화", type = "h")
#type="변수"에 따라 모양변화
