teens <- read.csv("snsdata.csv")
str(teens)

#mostra o genero sem NA
table(teens$gender)

#mostra o genero e os NA 
table(teens$gender, useNA = "ifany")
  
summary(teens$age) 

#todas as idades que estiverem fora do intervalo ele trata como NA
teens$age <- ifelse(teens$age >=13 & teens$age < 20, teens$age, NA)

summary(teens$age)

teens$female <- ifelse(teens$gender=="F" &
                          !is.na(teens$gender), 1,0)
teens$no_gender <- ifelse(is.na(teens$gender),1,0)

table(teens$gender, useNA = "ifany")

table(teens$female, useNA = "ifany")

table(teens$no_gender, useNA = "ifany")

