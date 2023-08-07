library(texreg)


t_model1 <- lm(data_final$take_up_of_loan ~ 
                                        + data_final$attitude
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

t_model2 <- lm(data_final$take_up_of_loan ~ 
            + data_final$attitude
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

t_model3 <- lm(data_final$take_up_of_loan ~ 
            + data_final$attitude
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

t_model4 <- lm(data_final$take_up_of_loan ~ 
              + data_final$attitude
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

t_model5 <- lm(data_final$take_up_of_loan ~ 
              + data_final$attitude
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

t_model6 <- lm(data_final$take_up_of_loan ~ 
              + data_final$attitude
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

t_model7 <- lm(data_final$take_up_of_loan ~ 
               + data_final$attitude
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

t_model8 <- lm(data_final$take_up_of_loan ~ 
               + data_final$attitude
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

t_model9 <- lm(data_final$take_up_of_loan ~ 
               + data_final$attitude
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

t_model10 <- lm(data_final$take_up_of_loan ~ 
                + data_final$attitude
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

t_model11 <- lm(data_final$take_up_of_loan ~ 
                + data_final$attitude
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

t_model12 <- lm(data_final$take_up_of_loan ~ 
                + data_final$attitude
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

t_model13 <- lm(data_final$take_up_of_loan ~ 
                + data_final$attitude
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

t_model14 <- lm(data_final$take_up_of_loan ~ 
                + data_final$attitude
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
                     , model14)
                , custom.model.names = c("Take-up"
                                         , "Take-up"
                                         , "Take-up"
                                         , "Take-up"
                                         , "Take-up"
                                         , "Take-up"
                                         , "Take-up"
                                         , "Take-up"
                                         , "Take-up"
                                         , "Take-up"
                                         , "Take-up"
                                         , "Take-up"
                                         , "Take-up"
                                         , "Take-up"
                )
                , label = "valami"
                , stars = c(0.01, 0.05, 0.1)
                )
write(reg1, "regressions_take_up.html")
