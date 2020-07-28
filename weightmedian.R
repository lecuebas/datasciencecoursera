weightmedian<-function(directory,day){
  files_list <- list.files(directory, full.names=TRUE)
  dat<-data.frame()
  for (i in 1:5){
    dat<-rbind(dat, read.csv(files_list[i]))
  }
  dat_subset<-dat[which(dat[, "Day"]==day),]
  median(dat_subset[, "Weight"], na.rm=TRUE)
}