rgph_2014_menages<-readstata13::read.dta13("data/Le fichier Ménage en format STATA.dta")
dplyr::glimpse(rgph_2014_menages)
saveRDS(dplyr::tibble(rgph_2014_menages),file = "data/rgph_2014_menages.rds")
rm(rgph_2014_menages)
