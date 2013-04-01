BLEU<-c(0.1264, 0.1226, 0.0856, 0.1212, 0.1042, 0.1223, 0.1011, 0.1071, 0.1118, 0.0958, 0.1235)

OOV<-c(1.8, 0.1, 0.1, 0.6, 3, 1.2, 1.2, 6.6, 1.9, 0.6, 2.9)

natpisi<-c("2-stem6", "2-stem3", "1-stem3", "2-stem4", "1-lemma", "2-stem5", "1-stem5", "baseline", "1-stem6", "1-stem4", "2-lemma")
plot(BLEU,OOV, xlim=c(8.5,13.5), ylab="OOV (in percents)")
text(BLEU, OOV, natpisi, pos=4)
