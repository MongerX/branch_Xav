rep_perf <- read.csv2('~/Documents/EssaieR/tp3/reponses_performances_responsables_2020.csv', fileEncoding = 'ISO-8859-1', header = TRUE, stringsAsFactors = FALSE)
rep_serv <- read.csv('~/Documents/EssaieR/tp3/reponses_service_clients_2021_02.csv', fileEncoding = 'ISO-8859-1', header = TRUE, stringsAsFactors = FALSE)

library(jsonlite)

x <- read_json('~/Documents/EssaieR/tp3/questionnaire_performances_responsables.json')
u <- read_json('~/Documents/EssaieR/tp3/questionnaire_service_clients.json')
y <- as.vector(c(unlist(x[[1]]['choix'])))
z <- read_json('~/Documents/EssaieR/tp3/questionnaire_performances_responsables.json')
rm(x, y)
z <- read.sondage('~/Documents/EssaieR/tp3/questionnaire_performances_responsables.json')
q <- read.sondage('~/Documents/EssaieR/tp3/questionnaire_service_clients.json')
length(y)
for (i in 1:length(x)){
y <- x
y[[i]][[3]] <- vector(mode = 'character', length = length(x[[i]]['choix']))
y[[i]][[3]]  <- as.vector(c(unlist(x[[i]]['choix'])))
rm(x[[i]]['choix'])
}
seq_len(length(x))
rm(z)
warnings()
rm(y)
x[[1]]['choix']
read.sondage <- function(x){
x <- read_json(x)
y <- list()
  for (i in seq_len(length(x))){
    y[[i]] <- list()
    y[[i]] <- list(x[[i]][['id']], x[[i]][['question']], c(unlist(x[[i]][['choix']])))
  }
    class(y) <- 'sondage'
    return(y)
    warning()
}
str(z)
