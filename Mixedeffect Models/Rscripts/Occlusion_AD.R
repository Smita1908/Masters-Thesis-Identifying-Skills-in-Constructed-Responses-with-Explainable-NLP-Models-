options(repos = c(CRAN = "https://cran.r-project.org"))

install.packages("lme4")
library(lme4)

# loading data
df <- read.csv("AD_Occlusion.csv")

# categorical data as factor
df$student_id <- as.factor(df$student_id)
df$question_id <- as.factor(df$question_id)
df$model <- as.factor(df$model)

# selecting GBERT_large as baseline
df$model <- relevel(df$model, ref = "GBERT_large")


model_AD_descriptive <- glmer(correct ~ model + (1 | question_id) + (1 | student_id), data = df, family = binomial)

# Summarize the models
summary(model_AD_descriptive)