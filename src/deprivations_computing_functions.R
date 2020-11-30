privation_sante_1 <- function(ENF.DEC) {
        if_else(
                ENF.DEC %in% c(
                        "1 enfant",
                        "2 enfants",
                        "3 enfants",
                        "4 enfants",
                        "5 enfants",
                        "6 enfants",
                        "7 enfants",
                        "8 enfants",
                        "9 enfants",
                        "10 enfants et plus"
                )  ,
                1,
                0,
                missing = 0
        )
}
privation_sante_2 <- function(cuis) {
        if_else(cuis == "Non disponible", 1, 0)
}

privation_education_1 <- function(NI_ET_AGR) {
        if_else(NI_ET_AGR %in% c("Aucun niveau d'études", "Préscolaire", "Primaire"),
                1,
                0)
}
privation_education_2 <- function(AGE1, NI_ET_AGR) {
        if_else(
                !(AGE1 %in% c(
                        "Moins d'1 an",
                        "1 an",
                        "2 ans",
                        "3 ans",
                        "4 ans",
                        "5 ans",
                        "6 ans",
                        "7 ans",
                        "8 ans",
                        "9 ans",
                        "10 ans",
                        "11 ans",
                        "12 ans"
                )) &
                        NI_ET_AGR %in% c("Aucun niveau d'études", "Préscolaire", "Primaire") ,
                1,
                0
        )
}

privation_betre_1 <- function(ECL.MODE) {
        if_else(ECL.MODE %in% c("Gaz (butane)","Lampe à huile / Bougies",
                                "Autre","Non déterminé (hors réseau public)") , 1, 0)
}

privation_betre_2 <- function(EAU_DUR) {
        if_else(EAU_DUR > 30, 1, 0)
}
privation_betre_3 <- function(EAUX_US, wc) {
        if_else(EAUX_US %in% c("Puits perdu","Dans la nature","Autre") & wc %in% c("Partagés","Non disponibles"), 1, 0)
}
privation_betre_4 <- function(sol) {
        if_else(sol %in% c("Sol nu / Sol recouvert de matériaux en terre ou assimilés","Autre"), 1, 0)
}
privation_betre_5 <- function(char, bois) {
        if_else(char %in% c("Utilisé fréquemment","Utilisé occasionnellement") |  bois %in% c("Utilisé fréquemment","Utilisé occasionnellement"), 1, 0)
}
privation_betre_6 <-
        function(voit, cam, tele, radio, pc, frigo, moto,TEL_PORT) {
                if_else((cam == "Aucun camion" & voit == "Aucune voiture") &
                                str_count(paste(tele, radio, pc, frigo, TEL_PORT),pattern = "Oui")  < 2, 1, 0)
        }