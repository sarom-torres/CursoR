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

#Se é femenino e não é NA seta female em 1 senão 0
teens$female <- ifelse(teens$gender=="F" &
                          !is.na(teens$gender), 1,0)

#Se é NA no genero seta 1 no no_gender senão 0
teens$no_gender <- ifelse(is.na(teens$gender),1,0)

table(teens$gender, useNA = "ifany")

table(teens$female, useNA = "ifany")

table(teens$no_gender, useNA = "ifany")

ave_age <-ave(teens$age, teens$gradyear, FUN = function(x) mean(x, na.rm = TRUE))

teens$age <-ifelse(is.na(teens$age), ave_age, teens$age)

summary(teens$age)

#pega somente os valores numericos
interests <-teens[5:40]

#faz a normalização da gaussiana
interests_z <- as.data.frame(lapply(interests,scale))

#Semente para gerar os grupos do cluster
set.seed(2345)

#Gera os clusters
teens_clusters <- kmeans(interests_z,5)

teens_clusters$size

teens_clusters$centers

teens$cluster <- teens_clusters$cluster

teens[1:5, c("cluster","gender","age","friends")]
