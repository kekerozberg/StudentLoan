library(texreg)


i_model1 <- lm(data_final$investment ~ 
               + data_final$attitude_ethics
             #+ data_final$age
             #+ data_final$sex_female 
             #+ data_final$disadvantaged_childhood
             #+ data_final$undergraduate_study_performance
             #+ data_final$independency
             #+ data_final$high_aspirations
             #+ data_final$knowledge
             #+ data_final$subjective_discount_factor_later
             #+ data_final$present_biasedness
             #+ data_final$risk_appetite
             #+ data_final$information_on_student_loan
)

i_model2 <- lm(data_final$investment ~ 
               + data_final$attitude_ethics
             + data_final$age
             #+ data_final$sex_female 
             #+ data_final$disadvantaged_childhood
             #+ data_final$undergraduate_study_performance
             #+ data_final$independency
             #+ data_final$high_aspirations
             #+ data_final$knowledge
             #+ data_final$subjective_discount_factor_later
             #+ data_final$present_biasedness
             #+ data_final$risk_appetite
             #+ data_final$information_on_student_loan
)

i_model3 <- lm(data_final$investment ~ 
               + data_final$attitude_ethics
             + data_final$age
             + data_final$sex_female 
             #+ data_final$disadvantaged_childhood
             #+ data_final$undergraduate_study_performance
             #+ data_final$independency
             #+ data_final$high_aspirations
             #+ data_final$knowledge
             #+ data_final$subjective_discount_factor_later
             #+ data_final$present_biasedness
             #+ data_final$risk_appetite
             #+ data_final$information_on_student_loan
)

i_model4 <- lm(data_final$investment ~ 
               + data_final$attitude_ethics
             + data_final$age
             + data_final$sex_female 
             + data_final$disadvantaged_childhood
             #+ data_final$undergraduate_study_performance
             #+ data_final$independency
             #+ data_final$high_aspirations
             #+ data_final$knowledge
             #+ data_final$subjective_discount_factor_later
             #+ data_final$present_biasedness
             #+ data_final$risk_appetite
             #+ data_final$information_on_student_loan
)

i_model5 <- lm(data_final$investment ~ 
               + data_final$attitude_ethics
             + data_final$age
             + data_final$sex_female 
             + data_final$disadvantaged_childhood
             + data_final$undergraduate_study_performance
             #+ data_final$independency
             #+ data_final$high_aspirations
             #+ data_final$knowledge
             #+ data_final$subjective_discount_factor_later
             #+ data_final$present_biasedness
             #+ data_final$risk_appetite
             #+ data_final$information_on_student_loan
)

i_model6 <- lm(data_final$investment ~ 
               + data_final$attitude_ethics
             + data_final$age
             + data_final$sex_female 
             + data_final$disadvantaged_childhood
             + data_final$undergraduate_study_performance
             + data_final$independency
             #+ data_final$high_aspirations
             #+ data_final$knowledge
             #+ data_final$subjective_discount_factor_later
             #+ data_final$present_biasedness
             #+ data_final$risk_appetite
             #+ data_final$information_on_student_loan
)

i_model7 <- lm(data_final$investment ~ 
               + data_final$attitude_ethics
             + data_final$age
             + data_final$sex_female 
             + data_final$disadvantaged_childhood
             + data_final$undergraduate_study_performance
             + data_final$independency
             + data_final$high_aspirations
             #+ data_final$knowledge
             #+ data_final$subjective_discount_factor_later
             #+ data_final$present_biasedness
             #+ data_final$risk_appetite
             #+ data_final$information_on_student_loan
)

i_model8 <- lm(data_final$investment ~ 
               + data_final$attitude_ethics
             + data_final$age
             + data_final$sex_female 
             + data_final$disadvantaged_childhood
             + data_final$undergraduate_study_performance
             + data_final$independency
             + data_final$high_aspirations
             + data_final$knowledge
             #+ data_final$subjective_discount_factor_later
             #+ data_final$present_biasedness
             #+ data_final$risk_appetite
             #+ data_final$information_on_student_loan
)

i_model9 <- lm(data_final$investment ~ 
               + data_final$attitude_ethics
             + data_final$age
             + data_final$sex_female 
             + data_final$disadvantaged_childhood
             + data_final$undergraduate_study_performance
             + data_final$independency
             + data_final$high_aspirations
             + data_final$knowledge
             + data_final$subjective_discount_factor_later
             #+ data_final$present_biasedness
             #+ data_final$risk_appetite
             #+ data_final$information_on_student_loan
)

i_model10 <- lm(data_final$investment ~ 
                + data_final$attitude_ethics
              + data_final$age
              + data_final$sex_female 
              + data_final$disadvantaged_childhood
              + data_final$undergraduate_study_performance
              + data_final$independency
              + data_final$high_aspirations
              + data_final$knowledge
              + data_final$subjective_discount_factor_later
              + data_final$present_biasedness
              #+ data_final$risk_appetite
              #+ data_final$information_on_student_loan
)

i_model11 <- lm(data_final$investment ~ 
                + data_final$attitude_ethics
              + data_final$age
              + data_final$sex_female 
              + data_final$disadvantaged_childhood
              + data_final$undergraduate_study_performance
              + data_final$independency
              + data_final$high_aspirations
              + data_final$knowledge
              + data_final$subjective_discount_factor_later
              + data_final$present_biasedness
              + data_final$risk_appetite
              #+ data_final$information_on_student_loan
)

i_model12 <- lm(data_final$investment ~ 
                + data_final$attitude_ethics
              + data_final$age
              + data_final$sex_female 
              + data_final$disadvantaged_childhood
              + data_final$undergraduate_study_performance
              + data_final$independency
              + data_final$high_aspirations
              + data_final$knowledge
              + data_final$subjective_discount_factor_later
              + data_final$present_biasedness
              + data_final$risk_appetite
              + data_final$information_on_student_loan
)

i_model13 <- lm(data_final$investment ~ 
                + data_final$attitude_ethics
              + data_final$age
              + data_final$sex_female 
              + data_final$disadvantaged_childhood
              + data_final$undergraduate_study_performance
              + data_final$independency
              + data_final$high_aspirations
              + data_final$knowledge
              + data_final$subjective_discount_factor_later
              + data_final$present_biasedness
              + data_final$risk_appetite
              + data_final$information_on_student_loan
              + data_final$underestimation_of_arbitrage_profit
)


reg1 <- htmlreg(list(model1
                     , model2
                     , model3
                     , model4
                     , model5
                     , model6
                     , model7
                     , model8
                     , model9
                     , model10
                     , model11
                     , model12
                     , model13
                     )
                , custom.model.names = c("Investment"
                                         , "Investment"
                                         , "Investment"
                                         , "Investment"
                                         , "Investment"
                                         , "Investment"
                                         , "Investment"
                                         , "Investment"
                                         , "Investment"
                                         , "Investment"
                                         , "Investment"
                                         , "Investment"
                                         , "Investment"
                )
                , label = "valami"
                , stars = c(0.01, 0.05, 0.1)
)
write(reg1, "regressions_investment.html")
