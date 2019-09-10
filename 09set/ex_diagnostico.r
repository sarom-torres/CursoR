wbcd <- read.csv("wisc_bc_data.csv",stringsAsFactors = FALSE)

str(wbcd)

#remove a primeira coluna do wbcd
wbcd <- wbcd[-1]

#conta quantos diagnosticos ocorreram
table(wbcd$diagnosis)

wbcd$diagnosis <- factor(wbcd$diagnosis,levels = c("B","M"),
                         labels = c("Benign", "Malignant"))

round(prop.table(table(wbcd$diagnosis))*100,digits=1)

#resume 3 caracteristicas de caracteristicas numericas
summary(wbcd[c("radius_mean","area_mean","smoothness_mean")])

#funcao que normaliza para que ambos os dados estejam na mesma escala
normalize <-function(x){
  return((x-min(x))/(max(x)-min(x)))
}

wbcd_n <- as.data.frame(lapply(wbcd[2:31],normalize))

summary(wbcd_n$area_mean)