file_path <- "work_from_home_burnout_dataset.csv"
df <- read.csv(file_path)

df$burnout_risk <- factor(df$burnout_risk, levels = c("Low","Medium","High"))

df$risk_low <- ifelse(df$burnout_risk == "Low", 1, 0)
df$risk_medium <- ifelse(df$burnout_risk == "Medium", 1, 0)
df$risk_high <- ifelse(df$burnout_risk == "High",1, 0)

vars <- c("task_completion_rate",
          "work_hours", "screen_time_hours", "sleep_hours", "burnout_score",
          "risk_low", "risk_medium","risk_high")

which(is.na(df[, vars]))

df_model <- df[, vars]

fit <- lm(task_completion_rate ~ work_hours +
            screen_time_hours +
            sleep_hours + burnout_score +
            risk_low + risk_medium + risk_high - 1,
          data = df_model)

summary(fit)

plot(fit,which = 1)
plot(fit,which = 2)

fitted_values <- fitted(fit)
sresidual_values <- rstandard(fit)
plot(fitted_values, sresidual_values,main = "Fitted vs standardized residuals",
     xlab = "Fitted", ylab = "Standardized residuals")


