import pandas as pd

df_GEl = pd.read_excel("predictions_PI_IB_GElectraLarge.xlsx")
df_GBl = pd.read_excel("predictions_PI_EB_GBERTLarge.xlsx")


#adding the model name to identify particular  model's prediction
df_GEl['model'] = 'GELECTRA_large_Instance'
df_GBl['model'] = 'GBERT_large_Entailment'

# renaming the predicted label
df_GEl.rename(columns={'Predicted Label': 'response'}, inplace=True)
df_GBl.rename(columns={'Predicted Label': 'response'}, inplace=True)

#checking if the model prediction and ground truth matches
df_GEl['correct'] = (df_GEl['Actual Label'] == df_GEl['response']).astype(int)
df_GBl['correct'] = (df_GBl['Actual Label'] == df_GBl['response']).astype(int)

# selecting only columns required for GLMER model
df_GEl = df_GEl[['student_id', 'question_id', 'model', 'correct']]
df_GBl= df_GBl[['student_id', 'question_id', 'model','correct']]

# Combining the dataframes to get a single prediction file for GLMER model
df_combined = pd.concat([df_GEl, df_GBl])

# output the required csv file
df_combined.to_csv('PI_data.csv', index=False)