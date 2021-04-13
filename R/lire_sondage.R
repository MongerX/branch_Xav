lire_sondage <- function(x){
  x <- read_json(x)
  out <- list()
  for (i in seq_len(length(x))){
    out[[i]] <- list()
    out[[i]] <- list(x[[i]][['id']], x[[i]][['question']], c(unlist(x[[i]][['choix']])))
  }
  class(out) <- 'sondage'
  return(out)
  warning()
}