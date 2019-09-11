wines <- read.csv("wine.csv",stringsAsFactors = TRUE)

str(wines)

summary(wines$Price)

hist(wines$Age)

wines$Age2 <- wines$Age^2
wines$AGST2 <- wines$AGST^2

ins_model <- lm(Price ~ WinterRain + Age2 + HarvestRain + AGST2 + FrancePop, data = wines)

ins_model

summary(ins_model)
