#VETOR
subject_name <- c("John Doe","Jane Doe","Steve Graves")
temperature <- c(98.1,98.6,101.4)
flu_status = c(FALSE,FALSE,TRUE)

#devolve o valor na posição 2
temperature[2]

#devolve o valor entre 2:3
temperature[2:3]

#exclui da apresentação o valor da posição 2 
temperature[-2]

#seleciona qual mostrar da temperatura
temperature[c(TRUE,TRUE,FALSE)]

#--------------------------------------------------------
#FATORES

gender <-factor(c("MALE","FEMALE","MALE"))
gender

# fator dentro do fator
blood = factor(c("O","AB","A"),
               levels = c("A","B","AB","O"))
blood


#ordenando fatores
symptoms = factor(c("SEVERE","MILD","MODERATE"),
                  levels = c("MILD","MODERATE","SEVERE"),
                  ordered = TRUE)
symptoms

symptoms > "MODERATE"

#------------------------------------------------------------
pt_data <- data.frame(subject_name,temperature,flu_status,gender,
                      blood,symptoms,stringsAsFactors = FALSE)
pt_data


