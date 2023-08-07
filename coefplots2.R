fit_cis_95 <- confint(t_model1, level = 0.95)
fit_cis_90 <- confint(t_model1, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model1)[2,2], row1[2,])

results <- row1



fit_cis_95 <- confint(i_model1, level = 0.95)
fit_cis_90 <- confint(i_model1, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model1)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model1, level = 0.95)
fit_cis_90 <- confint(a_model1, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model1)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(t_model2, level = 0.95)
fit_cis_90 <- confint(t_model2, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model2)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(i_model2, level = 0.95)
fit_cis_90 <- confint(i_model2, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model2)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model2, level = 0.95)
fit_cis_90 <- confint(a_model2, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model2)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(t_model3, level = 0.95)
fit_cis_90 <- confint(t_model3, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model3)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(i_model3, level = 0.95)
fit_cis_90 <- confint(i_model3, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model3)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model3, level = 0.95)
fit_cis_90 <- confint(a_model3, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model3)[2,2], row1[2,])

results <- rbind(results, row1)




fit_cis_95 <- confint(t_model4, level = 0.95)
fit_cis_90 <- confint(t_model4, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model4)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(i_model4, level = 0.95)
fit_cis_90 <- confint(i_model4, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model4)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model4, level = 0.95)
fit_cis_90 <- confint(a_model4, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model4)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(t_model5, level = 0.95)
fit_cis_90 <- confint(t_model5, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model5)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(i_model5, level = 0.95)
fit_cis_90 <- confint(i_model5, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model5)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model5, level = 0.95)
fit_cis_90 <- confint(a_model5, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model5)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(t_model6, level = 0.95)
fit_cis_90 <- confint(t_model6, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model6)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(i_model6, level = 0.95)
fit_cis_90 <- confint(i_model6, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model6)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model6, level = 0.95)
fit_cis_90 <- confint(a_model6, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model6)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(t_model7, level = 0.95)
fit_cis_90 <- confint(t_model7, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model7)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(i_model7, level = 0.95)
fit_cis_90 <- confint(i_model7, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model7)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model7, level = 0.95)
fit_cis_90 <- confint(a_model7, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model7)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(t_model8, level = 0.95)
fit_cis_90 <- confint(t_model8, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model8)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(i_model8, level = 0.95)
fit_cis_90 <- confint(i_model8, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model8)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model8, level = 0.95)
fit_cis_90 <- confint(a_model8, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model8)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(t_model9, level = 0.95)
fit_cis_90 <- confint(t_model9, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model9)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(i_model9, level = 0.95)
fit_cis_90 <- confint(i_model9, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model9)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model9, level = 0.95)
fit_cis_90 <- confint(a_model9, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model9)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(t_model10, level = 0.95)
fit_cis_90 <- confint(t_model10, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model10)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(i_model10, level = 0.95)
fit_cis_90 <- confint(i_model10, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model10)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model10, level = 0.95)
fit_cis_90 <- confint(a_model10, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model10)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(t_model11, level = 0.95)
fit_cis_90 <- confint(t_model11, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model11)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(i_model11, level = 0.95)
fit_cis_90 <- confint(i_model11, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model11)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model11, level = 0.95)
fit_cis_90 <- confint(a_model11, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model11)[2,2], row1[2,])

results <- rbind(results, row1)


fit_cis_95 <- confint(t_model12, level = 0.95)
fit_cis_90 <- confint(t_model12, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model12)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(i_model12, level = 0.95)
fit_cis_90 <- confint(i_model12, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model12)[2,2], row1[2,])

results <- rbind(results, row1)



fit_cis_95 <- confint(a_model12, level = 0.95)
fit_cis_90 <- confint(a_model12, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model12)[2,2], row1[2,])

results <- rbind(results, row1)


fit_cis_95 <- confint(t_model13, level = 0.95)
fit_cis_90 <- confint(t_model13, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(t_model13)[2,2], row1[2,])

results <- rbind(results, row1)


fit_cis_95 <- confint(i_model13, level = 0.95)
fit_cis_90 <- confint(i_model13, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(i_model13)[2,2], row1[2,])

results <- rbind(results, row1)


fit_cis_95 <- confint(a_model13, level = 0.95)
fit_cis_90 <- confint(a_model13, level = 0.90)

row1 <- data.frame(fit_cis_95)
row1 <- cbind(row1, fit_cis_90)
row1 <- cbind(tidy(a_model13)[2,2], row1[2,])

results <- rbind(results, row1)



results <- cbind(rownames(results), data.frame(results, row.names=NULL))

colnames(results) <- c('Variable','Coefficient','conf.low_95','conf.high_95','conf.low_90','conf.high_90')

results$Variable <- c('Attitude EMH toward arbitrage'
                      ,'Attitude EMH toward arbitrage'
                      ,'Attitude EMH toward arbitrage'
                      ,'+ Year'
                      ,'+ Year'
                      ,'+ Year'
                      ,'+ Age (years)'
                      ,'+ Age (years)'
                      ,'+ Age (years)'
                      ,'+ Sex (female=1)'
                      ,'+ Sex (female=1)'
                      ,'+ Sex (female=1)'
                      ,'+ Childhood'
                      ,'+ Childhood'
                      ,'+ Childhood'
                      ,'+ Study performance'
                      ,'+ Study performance'
                      ,'+ Study performance'
                      ,'+ Independence'
                      ,'+ Independence'
                      ,'+ Independence'
                      ,'+ Aspiration'
                      ,'+ Aspiration'
                      ,'+ Aspiration'
                      ,'+ Knowledge on arbitrage'
                      ,'+ Knowledge on arbitrage'
                      ,'+ Knowledge on arbitrage'
                      ,'+ Subjective DF'
                      ,'+ Subjective DF'
                      ,'+ Subjective DF'
                      ,'+ Present biasedness'
                      ,'+ Present biasedness'
                      ,'+ Present biasedness'
                      ,'+ Risk appetite'
                      ,'+ Risk appetite'
                      ,'+ Risk appetite'
                      ,'+ Information'
                      ,'+ Information')

results <- results[nrow(results):1,]


results$Variable <- as.character(results$Variable)
results$Variable <- factor(results$Variable, levels=unique(results$Variable))

results_final <- results[seq(0, 39, by=3),]

windows(height = 5, width = 5)
ggplot(results_final, 
       aes(x = Variable, y = Coefficient)) +
  theme_bw() +
geom_hline(yintercept = 0, 
           colour = gray(0), lty = 2) +
geom_point(aes(x = Variable, 
               y = Coefficient)) +
theme(axis.title.x=element_blank(), #remove x axis labels
        axis.title.y=element_blank(),  #remove y axis labels
      text=element_text(size=12, family="serif")
  ) +

geom_linerange(aes(x = Variable, 
                     ymin = conf.low_90,
                     ymax = conf.high_90),
                 lwd = 1) +
geom_linerange(aes(x = Variable, 
                     ymin = conf.low_95,
                     ymax = conf.high_95),
                 lwd = 0.5) +
  #coord_cartesian(ylim =c(-0.8, 1.2)) +
  #scale_y_continuous(limits = c(-0.2, 0.05)) +
 coord_flip()










































