options(repos = c(CRAN = "https://cran.r-project.org"))

install.packages("lme4")
library(lme4)

# loading data
df <- read.csv("PI_data.csv")

# categorical data as factors
df$student_id <- as.factor(df$student_id)
df$model <- as.factor(df$model)

# selecting GELECTRA_large_Instance as baseline
df$model <- relevel(df$model, ref = "GELECTRA_large_Instance")

# Fitting different mixed model
base_model<- glm(correct ~ model, family = binomial(link = "logit"), data = df)
student_model <- glmer(correct ~ model + (1 | student_id), family = binomial(link="logit"), data = df)

#Model comparison
anova(base_model, student_model)
