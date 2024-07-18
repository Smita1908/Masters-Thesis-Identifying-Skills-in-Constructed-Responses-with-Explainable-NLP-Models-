options(repos = c(CRAN = "https://cran.r-project.org"))

install.packages("lme4")
library(lme4)

# loading the data
df <- read.csv("AD_data.csv")

# categorical data as factor
df$student_id <- as.factor(df$student_id)
df$question_id <- as.factor(df$question_id)
df$model <- as.factor(df$model)

# selecting GBERT_base_Instance as baseline
df$model <- relevel(df$model, ref = "AD_GBERT_base_Instance")

# Fitting different mixed model
question_model <- glmer(correct ~ model + (1 | question_id), data = df, family = binomial)
student_model <- glmer(correct ~ model + (1 | question_id) + (1 | student_id), data = df, family = binomial)
full_model <- glmer(correct ~ model + (1 | question_id) + (1 + model | student_id), data = df, family = binomial)

#Model comparison
anova(question_model, student_model, full_model)


#citation("lme4")
#citation()