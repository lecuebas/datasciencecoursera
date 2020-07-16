# Quiz - Semana 1
# 11. Use the Week 1 Quiz Data Set to answer questions 11-20. 
# In the dataset provided for this Quiz, what are the column names of the dataset?

#1ª etapa: dezipar o arquivo atribuindo ao objeto "dezip":

temp1<-"C:/Users/Leticia/Desktop/datasciencecoursera/quiz1_data.zip"
unzip(temp1,list=TRUE) #Verifica o que tem dentro do zip
unzip(temp1) #dezipa
dir() #verifica os arquivos presentes no diretório de trabalho

#2ª etapa: abrir o arquivo csv atribuindo-o a outro objeto:

quiz_table <- read.csv(file = 'hw1_data.csv')

#3ª etapa: verificar o cabeçalho da tabela:
head(quiz_table) #OU
colnames(quiz_table)