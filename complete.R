complete<-function(directory, id=1:332){
  files_full<-list.files(directory, full.names=TRUE)
  dat<-data.frame()
  for (i in id)
  {
    temp<-read.csv(files_full[i])
    nobs<-sum(complete.cases(temp))
    dat<-rbind(dat,data.frame(i,nobs))
  }
  colnames(dat)<-c("id","nobs")
  return(dat)
}