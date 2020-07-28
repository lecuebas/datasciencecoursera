pollutantmean<-function(directory,pollutant, id=1:332){
  files_list2 <- list.files(directory, full.names=TRUE)
  dat2<-data.frame()
  for (i in id){
    dat2<-rbind(dat2, read.csv(files_list2[i]))
  }
    mean(dat2[, pollutant], na.rm=TRUE)
    
}