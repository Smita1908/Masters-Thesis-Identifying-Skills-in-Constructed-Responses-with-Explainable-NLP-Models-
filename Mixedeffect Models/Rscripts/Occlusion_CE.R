options(repos = c(CRAN = "https://cran.r-project.org"))

install.packages("lme4")
library(lme4)

# loading the data
df <- read.csv("CE_occlusion.csv")

# categorical data as factor
df$student_id <- as.factor(df$student_id)
df$question_id <- as.factor(df$question_id)
df$model <- as.factor(df$model)

# selecting GBERT_large as baseline
df$model <- relevel(df$model, ref = "GBERT_large")


# MixedModel with random slopes for random intercept for question and students
model_CE_descriptive <- glmer(correct ~ model + (1 | question_id) + (1 | student_id), data = df, family = binomial)

# Summarize the models
summary(model_CE_descriptive)