table(rgph_indiv$ENF_DEC,rgph_indiv$Privation_Sante_1_indiv)
#check privationSante! calcul correct 

table(rgph_indiv$NIV_ET_AGR,rgph_indiv$Privatioon_education_1_indiv)
# check privationEducation1 calcul correct

rgph_indiv %>% 
 group_by(AGE1,NIV_ET_AGR,Privatioon_education_2_indiv) %>%
 tally()%>%
 ggplot(aes(x=AGE1,y=n,fill=factor(Privatioon_education_2_indiv)))+
 geom_bar(stat="identity")+
 facet_wrap(~NIV_ET_AGR)+
 theme_void() #check privationEducation2 calcul correct
