ipm_morocco_data<- readxl::read_excel("data/communes-ipm-2004-2014-1-0.xlsx",sheet = 1)
ipm_morocco_metadata<- readxl::read_excel("data/communes-ipm-2004-2014-1-0.xlsx",sheet = 2)
save(ipm_morocco_data,ipm_morocco_metadata,file = "data/ipm_data.RData")
