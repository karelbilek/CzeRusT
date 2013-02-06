BLEU<-c(20.43, 21.33, 16.47, 19.54, 20.83, 21.69, 23, 15.2, 22.79, 23.22, 23.49)
OOV<-c(4.8, 2.5, 0.1, 0.5, 1, 1.5, 2.4, 0.1, 0.5, 1, 1.5)
natpisi<-c("baseline", "1-lemma", "1-lcstem3", "1-lcstem4", "1-lcstem5", "1-lcstem6", "2-lemma", "2-lcstem3", "2-lcstem4", "2-lcstem5", "2-lcstem6")



plot(BLEU,OOV, xlim=c(15,25), ylab="OOV (in percents)")
text(BLEU, OOV, natpisi, pos=4)
