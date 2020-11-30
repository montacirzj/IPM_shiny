rgph_2014_individus<-readstata13::read.dta13("data/Le fichier Individu en format STATA.dta")
dplyr::glimpse(rgph_2014_individus)
saveRDS(dplyr::tibble(rgph_2014_individus),file = "data/rgph_2014_individus.rds")

dplyr::glimpse(readRDS("data/rgph_2014_menages.rds"))
