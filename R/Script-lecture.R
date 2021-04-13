rep_perf <- read.csv2(
  '~/Documents/EssaieR/tp3/reponses_performances_responsables_2020.csv',
                      encoding = 'UTF-8',
                      header = TRUE
                      )
rep_serv <- read.csv2(
  '~/Documents/EssaieR/tp3/reponses_service_clients_2021_02.csv',
                      encoding = 'UTF-8',
                      header = TRUE
                      )
sondage_perf <- lire_sondage('~/Documents/EssaieR/tp3/questionnaire_performances_responsables.json')
sondage_serv <- lire_sondage('~/Documents/EssaieR/tp3/questionnaire_service_clients.json')