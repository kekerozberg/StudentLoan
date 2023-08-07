library(data.table)
raw_data <- read.table("student_loan_data.csv", header=T, sep=";")

raw_data <- data.table(raw_data)

mid_data <- data.table(id = raw_data$ID
                         , take_up_of_loan = raw_data$borrowing_student_loan
                         , investment_bond = raw_data$Studentloan_Investment_Government_bonds_dummy
                         , investment_risky = raw_data$Studentloan_Investment_Risky_Asset_dummy
                         , investment = NA
                         , age = 2021 - raw_data$Birth_date
                         , normalized_age = ((2021 - raw_data$Birth_date) - mean(2021 - raw_data$Birth_date)) / sd(2021 - raw_data$Birth_date)
                         , sex_female = raw_data$Sex
                         , financial_situation_under_18 = raw_data$relative_finanacial_situation_before_final_examination_categories
                         , not_from_high_school = raw_data$highest_completed_level_of_education
                         , from_village = raw_data$residence_before_final_examination
                         , parents_without_degree = raw_data$parents_highest_completed_level_of_education
                         , grade_from_corpfin = raw_data$Corporate_finance_grade
                         , grade_from_fincal = raw_data$Financial_calculation_grade
                         , sfm = raw_data$SFM
                         , lives_separately_from_parents = raw_data$residence_before_covid_categories
                         , graduated = raw_data$highest_completed_level_of_education
                         , good_financial_conditions = raw_data$relative_finanacial_situation_now_categories
                         , works = raw_data$Working_dummy
                         , working_hours = raw_data$working_hours
                         , normalized_net_income = (raw_data$monthly_netincome - mean(raw_data$monthly_netincome)) / sd(raw_data$monthly_netincome)
                         , planning_Msc = raw_data$Msc_plan
                         , living_abroad = raw_data$foreign_country_in_five_years
                         , normalized_expected_income = (raw_data$expected_netincome_in_ten_years - mean(raw_data$expected_netincome_in_ten_years)) / sd(raw_data$expected_netincome_in_ten_years)
                         , normalized_expenditure = (raw_data$monthly_expenditure_without_housing - mean(raw_data$monthly_expenditure_without_housing)) / sd(raw_data$monthly_expenditure_without_housing)
                         , planned_children = raw_data$children_plan ### több mint három az mennyi?, nem tudom az mennyi?
                         , arbitrage_definition = raw_data$arbitrage_definition_dummy
                         , arbitrage_dinamicorstatic = raw_data$dynamic_static_arbitrage_dummy
                         , arbitrage_calculation = raw_data$arbitrage_calculation_task.dummy
                         , compensation_note_arbitrage_just_before_regime_change = raw_data$Compensation_note_arbitrage_just_before_regime_change_dummy
                         , compensation_note_arbitrage_not_worth = raw_data$Compensation_note_arbitrage_not_worth_dummy
                         , compensation_note_economist = raw_data$Compensation_note_economist_dummy
                         , compensation_note_efficient_market_hypothesis = raw_data$Compensation_note_efficient_market_hypothesis_dummy
                         , compensation_note_not_ethical = raw_data$Compensation_note_not_ethical_dummy
                         , compensation_note_preferably_study = raw_data$Compensation_note_preferably_study_dummy
                         , subjective_discount_factor_now = raw_data$X.0.1
                         , subjective_discount_factor_later = raw_data$X.12.13
                         , present_biasedness = raw_data$Present.bias.....3.categories ### ez a konkrét érték vagy dummy?
                         , risk_appetite = (raw_data$Risk - mean(raw_data$Risk)) / sd(raw_data$Risk)
                         , max_amount = raw_data$max_amount_studentloan1_dummy
                         , interest_rates = raw_data$interest_studentloan1_dummy
                         , support_family = raw_data$studentloan_family_support
                         , support_mother = raw_data$studentloan_family_support_mother
                         , map_interest = raw_data$interest_MAP_dummy
                         , underestimation_of_arbitrage_profit = raw_data$underestimation_of_arbitrage_profit ### ez kérdéses, hogy miből jött ki, mit jelöl az 1 és 0 
                         , overestimation_of_arbitrage_profit = raw_data$overestimation_of_arbitrage_profit
)

mid_data[is.na(investment_bond), investment_bond := 0]
mid_data[is.na(investment_risky), investment_risky := 0]
mid_data[investment_bond | investment_risky, investment := 1]
mid_data[is.na(investment), investment := 0]
mid_data$investment <- as.numeric(mid_data$investment)


mid_data[sex_female == "female", sex_female := 1]
mid_data[sex_female == "male", sex_female := 0]
mid_data$sex_female <- as.numeric(mid_data$sex_female)


mid_data[financial_situation_under_18 == "good", financial_situation_under_18 := 0]
mid_data[financial_situation_under_18 == "bad", financial_situation_under_18 := 1]
mid_data$financial_situation_under_18 <- as.numeric(mid_data$financial_situation_under_18)


mid_data[not_from_high_school == "szakközépiskolai érettségi; szakképzést követő érettségi", not_from_high_school := 1]
mid_data[not_from_high_school != 1, not_from_high_school := 0]
mid_data$not_from_high_school <- as.numeric(mid_data$not_from_high_school)


mid_data[from_village == "Község. nagyközség", from_village := 1]
mid_data[from_village != 1, from_village := 0]
mid_data$from_village <- as.numeric(mid_data$from_village)


mid_data[parents_without_degree == "főiskola / BA / BSc", parents_without_degree := 0]
mid_data[parents_without_degree == "egyetem / MA / MSc", parents_without_degree := 0]
mid_data[parents_without_degree == "doktori / PhD", parents_without_degree := 0]
mid_data[parents_without_degree != 0, parents_without_degree := 1]
mid_data$parents_without_degree <- as.numeric(mid_data$parents_without_degree)


mid_data[sfm == "Igen", sfm := 1]
mid_data[sfm != 1, sfm := 0]
mid_data$sfm <- as.numeric(mid_data$sfm)


mid_data[lives_separately_from_parents == "szülőkkel", lives_separately_from_parents := 0]
mid_data[lives_separately_from_parents != 0, lives_separately_from_parents := 1]
mid_data$lives_separately_from_parents <- as.numeric(mid_data$lives_separately_from_parents)

mid_data[graduated == "főiskola / BA / BSc", graduated := 1]
mid_data[graduated == "egyetem / MA / MSc", graduated := 1]
mid_data[graduated != 1, graduated := 0]
mid_data$graduated <- as.numeric(mid_data$graduated)



mid_data[good_financial_conditions == "good", good_financial_conditions := 1]
mid_data[good_financial_conditions != 1, good_financial_conditions := 0]
mid_data$good_financial_conditions <- as.numeric(mid_data$good_financial_conditions)


mid_data[planning_Msc == "Igen", planning_Msc := 1]
mid_data$planning_Msc <- as.numeric(mid_data$planning_Msc)


mid_data[living_abroad == "Külföldön", living_abroad := 1]
mid_data[living_abroad != 1, living_abroad := 0]
mid_data$living_abroad <- as.numeric(mid_data$living_abroad)


mid_data[planned_children == "több. mint 3", planned_children := 4]
mid_data[planned_children == "nem tudom", planned_children := 0]
mid_data$planned_children <- as.numeric(mid_data$planned_children)


mid_data[present_biasedness == "present-biased", present_biasedness := 1]
mid_data[present_biasedness != 1, present_biasedness := 0]
mid_data$present_biasedness <- as.numeric(mid_data$present_biasedness)

fwrite(mid_data, "student_loan_mid_KP_20211205.csv")

#mid_data <- mid_data[graduated != 1]
mid_data <- mid_data[age < 26]


agg_disadvantage_childhood <- (mid_data$financial_situation_under_18
                              + mid_data$not_from_high_school
                              + mid_data$from_village
                              + mid_data$parents_without_degree
)
agg_disadvantage_childhood_min <- min(agg_disadvantage_childhood)
agg_disadvantage_childhood_max <- max(agg_disadvantage_childhood)
agg_disadvantage_childhood_diff <- agg_disadvantage_childhood_max - agg_disadvantage_childhood_min

agg_undergraduate_study_performance <- (mid_data$grade_from_corpfin
                                  + mid_data$grade_from_fincal
                                  + 3 * mid_data$sfm
)
agg_undergraduate_study_performance_min <- min(agg_undergraduate_study_performance)
agg_undergraduate_study_performance_max <- max(agg_undergraduate_study_performance)
agg_undergraduate_study_performance_diff <- agg_undergraduate_study_performance_max - agg_undergraduate_study_performance_min

agg_independency <- (mid_data$lives_separately_from_parents
                + mid_data$good_financial_conditions
                #+ mid_data$works
                + mid_data$working_hours / 20
                #+ mid_data$normalized_net_income
                #- mid_data$normalized_expenditure
)

agg_independency_min <- min(agg_independency)
agg_independency_max <- max(agg_independency)
agg_independency_diff <- agg_independency_max - agg_independency_min

agg_high_aspirations <- (mid_data$planning_Msc
                    + mid_data$living_abroad
                    + mid_data$normalized_expected_income
                    + 0.5 * mid_data$planned_children
)
agg_high_aspirations_min <- min(agg_high_aspirations)
agg_high_aspirations_max <- max(agg_high_aspirations)
agg_high_aspirations_diff <- agg_high_aspirations_max - agg_high_aspirations_min

agg_knowledge <- (mid_data$arbitrage_definition
                + mid_data$arbitrage_dinamicorstatic
                + mid_data$arbitrage_calculation
)
agg_knowledge_min <- min(agg_knowledge)
agg_knowledge_max <- max(agg_knowledge)
agg_knowledge_diff <- agg_knowledge_max - agg_knowledge_min

agg_attitude <- (
              + mid_data$compensation_note_arbitrage_just_before_regime_change
              + mid_data$compensation_note_efficient_market_hypothesis
              + mid_data$compensation_note_arbitrage_not_worth
              + mid_data$compensation_note_not_ethical
              + mid_data$compensation_note_preferably_study
              - mid_data$compensation_note_economist
)
agg_attitude_min <- min(agg_attitude)
agg_attitude_max <- max(agg_attitude)
agg_attitude_diff <- agg_attitude_max - agg_attitude_min

agg_attitude_EMH <- (
  + mid_data$compensation_note_arbitrage_just_before_regime_change
  + mid_data$compensation_note_efficient_market_hypothesis
  + mid_data$compensation_note_arbitrage_not_worth
)
agg_attitude_EMH_min <- min(agg_attitude_EMH)
agg_attitude_EMH_max <- max(agg_attitude_EMH)
agg_attitude_EMH_diff <- agg_attitude_EMH_max - agg_attitude_EMH_min

agg_attitude_ethics <- (
  + mid_data$compensation_note_not_ethical
  + mid_data$compensation_note_preferably_study
  - mid_data$compensation_note_economist
)
agg_attitude_ethics_min <- min(agg_attitude_ethics)
agg_attitude_ethics_max <- max(agg_attitude_ethics)
agg_attitude_ethics_diff <- agg_attitude_ethics_max - agg_attitude_ethics_min



agg_information_on_student_loan <- (mid_data$max_amount
                                + mid_data$interest_rates
                                + mid_data$support_family
                                + mid_data$support_mother
                                + mid_data$map_interest
                                #- (mid_data$underestimation_of_arbitrage_profit - 1)
)
agg_information_on_student_loan_min <- min(agg_information_on_student_loan)
agg_information_on_student_loan_max <- max(agg_information_on_student_loan)
agg_information_on_student_loan_diff <- agg_information_on_student_loan_max - agg_information_on_student_loan_min

risk_appetite_min <- min(mid_data$risk_appetite)
risk_appetite_max <- max(mid_data$risk_appetite)
risk_appetite_diff <- risk_appetite_max - risk_appetite_min

data_final <- data.table(id = mid_data$id
                        , take_up_of_loan = mid_data$take_up_of_loan
                        , investment = mid_data$investment
                        , arbitrage = mid_data$investment_bond
                        , age = mid_data$age
                        , sex_female = mid_data$sex_female
                        , graduated = mid_data$graduated
                        , disadvantaged_childhood = (agg_disadvantage_childhood - agg_disadvantage_childhood_min) / agg_disadvantage_childhood_diff
                        , undergraduate_study_performance = (agg_undergraduate_study_performance - agg_undergraduate_study_performance_min) / agg_undergraduate_study_performance_diff
                        , independency = (agg_independency - agg_independency_min) / agg_independency_diff
                        , high_aspirations = (agg_high_aspirations - agg_high_aspirations_min) / agg_high_aspirations_diff
                        , knowledge = (agg_knowledge - agg_knowledge_min) / agg_knowledge_diff
                        , attitude = (agg_attitude - agg_attitude_min) / agg_attitude_diff
                        , attitude_EMH = (agg_attitude_EMH - agg_attitude_EMH_min) / agg_attitude_EMH_diff
                        , attitude_ethics = (agg_attitude_ethics - agg_attitude_ethics_min) / agg_attitude_ethics_diff
                        , subjective_discount_factor_now = mid_data$subjective_discount_factor_now
                        , subjective_discount_factor_later = mid_data$subjective_discount_factor_later
                        , present_biasedness = mid_data$present_biasedness
                        , risk_appetite = mid_data$risk_appetite
                        #, risk_appetite = (mid_data$risk_appetite - risk_appetite_min) / risk_appetite_diff 
                        , information_on_student_loan = (agg_information_on_student_loan - agg_information_on_student_loan_min) / agg_information_on_student_loan_diff
                        , underestimation_of_arbitrage_profit = mid_data$underestimation_of_arbitrage_profit
                        , overestimation_of_arbitrage_profit = mid_data$overestimation_of_arbitrage_profit
                        , normalized_net_income = mid_data$normalized_net_income
                        , normalized_expenditure = mid_data$normalized_expenditure
)



fwrite(data_final, "student_loan_final_KP_20211205.csv")
