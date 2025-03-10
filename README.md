# Masters Thesis: 
- Title: Identifying Skills in Constructed Responses with Explainable NLP Models 💡🚀
- 👩‍💻 Smita Bhattacharya
- 🎓 M.Sc. in Data Science and Artificial Intelligence
- 🏫 Saarland University


##  Thesis workflow:

The entire workflow is depicted below: ![figure](images/Thesis%20Workflow.png)
- Each desideratum of the PDR framework is depicted as three seperate stages.
    - **Stage 1: Predictive Accuracy (P)**
        - Descriptive statistics component:    
            - 📊 Data Analysis folder contains two jupyter files.
                - AFLEK_Data_Analysis.ipynb contains the details of the descriptive statistics for the AFLEK dataset.
                - CREG_Data_Analysis.ipynb contains the details of the descriptive statictics for the CREG-TUE dataset.
        - Instance & entailment based scoring methods:
            - 📈 Predictive Accuracy folder contains five jupyter files.
                - File name starts with AFLEK contains the instance and entailment based finetuning for six models for each skill. The file name also contains the respective skill names. Furthermore, each files are self contained  for preprocessing and further finetuning.
                - File name starts with CREG contains the instance and entailment based finetuning for six models for binary and four class classification.
                  
     - **Stage 2: Descriptive Accuracy (D)**
        - 🔍🧠 Descriptive accuracy folder contains three jupyter file.
            	- Explainability_Analyzing_Data.ipynb, Explainability_Constructing_Explanations.ipynb and Explainability_Planning_Investigation.ipynb contain the local and global explainability of these three skills respectively.
          
    - **Stage 3: Relevancy (R)**
        - 🎭 Occlusion test.
            - Explainability_Analyzing_Data.ipynb, Explainability_Constructing_Explanations.ipynb contains the details of the occlusion study. 
        - 🧮 Mixedeffect Models folder contains another two folders.
            - Preprocessing Scripts: This folder contains three python file. These files are used to preprocess the predictions files for the mixed effect models.
            - Rscripts:This folder contains five Rscripts for different mixed effect models.
