corr<-function(directory, threshold=0){
  files_full<-list.files(directory, full.names = TRUE)
  dat<-vector(mode="numeric", length=0)
  for(i in 1:length(files_full)){
    tmp<-read.csv(files_full[i])
    csum<-sum((!is.na(tmp$sulfate))&(!is.na(tmp$nitrate)))
    if(csum>threshold)
    {
      sul <- tmp[which(!is.na(tmp$sulfate)), ]
      nit <- sul[which(!is.na(sul$nitrate)), ]
      dat <- c(dat, cor(nit$sulfate, nit$nitrate))
    }
    
  }
  dat
}