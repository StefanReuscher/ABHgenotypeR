#for analysing the number of changed genotypes

preImp_preCor <- readABHgenotypes("C:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/spring2014/filt025/5_genotypes_parental.csv")
postImp_preCor <- readABHgenotypes("C:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/spring2014/filt025/6_genotypes_imputed.csv")
postImp_postCor <- readABHgenotypes("C:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/spring2014/filt025/8_genotypes_correctedDups.csv")
t1 <- table(preImp_preCor$ABHmatrix)
paste("spring025")
paste("There are ",100 / sum(t1) * t1[4], "% Ns pre error correction")
t2 <- table(postImp_preCor$ABHmatrix)
paste("There are ",100 / sum(t2) * t2[4], "% Ns post error correction")

preImp_preCor <- readABHgenotypes("C:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/spring2014/filt050/5_genotypes_parental.csv")
postImp_preCor <- readABHgenotypes("C:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/spring2014/filt050/6_genotypes_imputed.csv")
postImp_postCor <- readABHgenotypes("C:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/spring2014/filt050/8_genotypes_correctedDups.csv")
paste("spring050")
t1 <- table(preImp_preCor$ABHmatrix)
paste("There are ",100 / sum(t1) * t1[4], "% Ns pre error correction")
t2 <- table(postImp_preCor$ABHmatrix)
paste("There are ",100 / sum(t2) * t2[4], "% Ns post error correction")


preImp_preCor <- readABHgenotypes("C:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/spring2014/filt095/5_genotypes_parental.csv")
postImp_preCor <- readABHgenotypes("C:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/spring2014/filt095/6_genotypes_imputed.csv")
postImp_postCor <- readABHgenotypes("C:/Users/Stefan/Google Drive/Olo_GBS/GBS_export/spring2014/filt095/8_genotypes_correctedDups.csv")
paste("spring095")
t1 <- table(preImp_preCor$ABHmatrix)
paste("There are ",100 / sum(t1) * t1[4], "% Ns pre error correction")
t2 <- table(postImp_preCor$ABHmatrix)
paste("There are ",100 / sum(t2) * t2[4], "% Ns post error correction")

