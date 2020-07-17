# Quiz - Semana 1

# 11.Use the Week 1 Quiz Data Set to answer questions 11-20. 
# In the dataset provided for this Quiz, what are the column names of
#the dataset?

#1ª etapa: dezipar o arquivo atribuindo ao objeto "dezip":

getwd() #Verifica o diretório em que estamos trabalhando
temp1<-"C:/Users/Leticia/Desktop/datasciencecoursera/quiz1_data.zip"
unzip(temp1,list=TRUE) #Verifica o que tem dentro do zip
unzip(temp1) #dezipa
dir() #verifica os arquivos presentes no diretório de trabalho

#2ª etapa: abrir o arquivo csv atribuindo-o a outro objeto:

quiz_table <- read.csv(file = 'hw1_data.csv')

#3ª etapa: verificar o cabeçalho da tabela:
head(quiz_table) #OU
colnames(quiz_table)

#12.Extract the first 2 rows of the data frame and print them 
#to the console. What does the output look like?

quiz_table[1:2,]   #OU
quiz_table[c(1,2),] #OU
head(quiz_table, 2) 

# quiz_table[c(1,60),] Extrai a linha 1 e 60 de todas as colunas

#13.How many observations (i.e. rows) are in this data frame?

nrow(quiz_table)

#14.Extract the last 2 rows of the data frame and print them to the 
#console.What does the output look like?

tail(quiz_table, 2)


# 15.What is the value of Ozone in the 47th row?

quiz_table[47, "Ozone"]


#16. How many missing values are in the Ozone column of this
#data frame?

#1ª Etapa: fazer um subset da coluna Ozone 
ozone<-quiz_table[,"Ozone"]

#2ª Etapa: a função is.na mostra como TRUE os missing values
ozone_na<-is.na(ozone)

#3ª Etapa: a função soma todos os valores TRUE
sum(ozone_na)

#17. What is the mean of the Ozone column in this dataset? Exclude 
#missing values (coded as NA) from this calculation.

ozone_sem_na<-subset(quiz_table, !is.na(Ozone), select = Ozone)
mean(ozone_sem_na[["Ozone"]])

#18. Extract the subset of rows of the data frame where Ozone values are 
#above 31 and Temp values are above 90. What is the mean of Solar.R in this
#subset?

sub18<- subset(quiz_table, Ozone>31 & Temp>90, select=Solar.R)
mean(sub18[["Solar.R"]])

#19.What is the mean of "Temp" when "Month" is equal to 6?
sub19<- subset(quiz_table, Month=6, select=Temp)
mean(sub6[["Temp"]])


#20. What was the maximum ozone value in the month of May (i.e. Month is 
#equal to 5)?

sub20<- subset(quiz_table, Month==5, select=Ozone)

#preciso tirar os NA

sub20_sem_na<-subset(sub20, !is.na(Ozone), select = Ozone)
max(sub20_sem_na[["Ozone"]])
which.max(sub20_sem_na[["Ozone"]]) #mostra qual linha está localizada 

