source("src/deprivations_computing_functions.R")

rgph_indiv <- rgph_indiv %>%
 mutate(Privation_Sante_1_indiv = privation_sante_1(ENF.DEC = ENF_DEC),
        Privatioon_education_1_indiv = privation_education_1(NIV_ET_AGR),
        Privatioon_education_2_indiv = privation_education_2(AGE1,NIV_ET_AGR)
        )

rgph_menages <- rgph_menages %>%
 mutate(
  Priv_menage_bienetre1=privation_betre_1(ECL_MODE),
  Priv_menage_bienetre2=privation_betre_2(EAU_DUR),
  Priv_menage_bienetre3=privation_betre_3(EAUX_US,wc),
  Priv_menage_bienetre4=privation_betre_4(sol),
  Priv_menage_bienetre5=privation_betre_5(char,bois),
  Priv_menage_bienetre6=privation_betre_6(voit,cam,tele,radio,pc,frigo,moto,TEL_PORT)
  )




rgph_indiv %>% select(MEN_PRO,NOR_MEN,LIEN_CM,Privation_Sante_1_indiv,Privatioon_education_1_indiv,Privatioon_education_2_indiv) %>%
 saveRDS("data/rgph_indiv_w_privations.rds")

saveRDS(rgph_menages,"data/rgph_menages_w_privations.rds")





