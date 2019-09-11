insurance <- read.csv("insurance.csv",stringsAsFactors = TRUE)

str(insurance)

#mostra um resumo estatístico
summary(insurance$expenses)

#histograma
hist(insurance$expenses)

#quantidade de pessoas por regiano
table(insurance$region)

#quantidade de homens e mulheres
table(insurance$sex)

#quantidade de fumantes 
table(insurance$smoker)

#smoker x sex
table(insurance$smoker,insurance$sex)

#fumantes com filhos
table(insurance$children,insurance$smoker)

#tabela de correlação
cor(insurance[c("age","bmi","children","expenses")])

ins_model <- lm(expenses ~ age + children + bmi + sex + smoker + region , data = insurance)

ins_model

summary(ins_model)

insurance$age2 <- insurance$age^2

ins_model2 <- lm(expenses ~ age + age*children + children + sex + smoker*bmi + smoker*bmi*age + smoker +region, data = insurance)

summary(ins_model2)

