#Setting Working Directory
setwd("D:/suwardi/Tugas TB")
getwd()

#Read Dataset
gps <- read.csv("gps.csv", sep=",")

#Melihat Corelation Speed
cor(gps$speed,gps$distance)

#Melihat Corelation Time
cor(gps$time,gps$distance)

#Membuat Model Linear
linearmod<-lm(distance~time+speed, data=gps)

#Melihat ringkasan variable
summary(linearmod)

#Menjalankan perintah print
print(linearmod)

#Membuat Dataset Baru
databaru<- data.frame(
  speed=c(19.21),
  time=c(0.13)
)

#Menampilkan Hasil Prediksi
predict(linearmod,newdata = databaru)
