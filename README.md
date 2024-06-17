# Data-Mining
This project is a comprehensive application of various data science techniques to real-world problems using the R programming language and Power BI for visualization. It involves three main tasks Classification, Clustering, ARM. '

Description:
This project is a comprehensive application of various data science techniques to real-world problems using the R programming language and Power BI for visualization. It involves three main tasks:

**1. Implementing Classification in Data Mining to Prevent Diabetes Impacts on Pregnancies**
**2. Implementing Clustering in Data Mining to Analyze Death Distribution in England and Wales**
**3. Applying Association Rules in Data Mining for Market Basket Analysis**

Each of these tasks demonstrates the practical application of data mining techniques to derive meaningful insights from data and aid in decision-making processes.

# Task 1: Implementing Classification in Data Mining to Prevent Diabetes Impacts on Pregnancies

## Introduction
Diabetes is a chronic health condition affecting the body's ability to process blood sugar. This project focuses on using the Pima Indians Diabetes Dataset to predict diabetes in pregnant women and understand how various diagnostic measurements impact their health.

## Datasets
The Pima Indians Diabetes Dataset from the National Institute of Diabetes and Digestive and Kidney Diseases includes diagnostic measurements for women over 21 years old. The dataset has 768 records with 9 attributes: Pregnancies, Glucose, Blood Pressure, Skin Thickness, Insulin, BMI, Diabetes Pedigree Function, Age, and Outcome (diabetes or not).

## Explanation and Preparation
The dataset is prepared and analyzed using R. Key packages used include caTools for data splitting, dplyr for data manipulation, ggplot2 for visualization, caret for creating a confusion matrix, and corrplot for correlation plots.

## Data Mining Process

### 1. Data Preparation:
- **Data Cleaning:** Handle missing values, normalize data to ensure all features are on the same scale.
- **Feature Selection:** Identify and select significant features that contribute to the prediction of diabetes.
- **Data Splitting:** Split the data into training and test sets, typically in a 70:30 ratio.

### 2. Model Building:

- **Algorithm Selection:** Choose appropriate classification algorithms such as k-Nearest Neighbors (k-NN), Decision Trees, or Logistic Regression.
- **Model Training:** Train the model using the training dataset, adjusting parameters to optimize performance.
- **Hyperparameter Tuning:** Use techniques like Grid Search or Random Search to find the best model parameters.

### 3. Evaluation:

- **Model Testing:** Test the model on the test dataset to evaluate its performance.
- **Confusion Matrix:** Create a confusion matrix to assess the accuracy, precision, recall, and F1-score of the model.
- **Cross-Validation:** Use k-fold cross-validation to ensure the model's robustness and avoid overfitting.

### 4. Interpretation and Visualization:

- **Feature Importance:** Analyze which features are most important for predicting diabetes.
- **Visualizations:** Use ggplot2 to create visualizations such as ROC curves and feature importance plots.

## Results
The classification model achieved an accuracy of approximately 92.17%, indicating a high reliability in predicting diabetes in pregnant women based on the given diagnostic measurements.

# Task 2: Implementing Clustering in Data Mining to Analyze Death Distribution in England and Wales

## Introduction
This task involves clustering techniques to analyze death registrations and occurrences in different regions of England and Wales, using Power BI for visualization.

## Datasets
Data on death registrations and occurrences by local authority and health board in England and Wales is utilized. The dataset includes weekly death counts across different locations.

## Explanation and Preparation
The dataset is prepared for clustering analysis, and key patterns in death distributions are visualized using Power BI.

## Data Mining Process

### 1. Data Preparation:

- **Data Cleaning:** Handle missing or inconsistent data.
- **Normalization:** Normalize the data to ensure features contribute equally to the distance calculations.
- **Feature Selection:** Select relevant features such as location, time, and cause of death for clustering.

### 2. Clustering:

- **Algorithm Selection:** Choose appropriate clustering algorithms such as k-means or hierarchical clustering.
- **Determining Optimal Clusters:** Use the Elbow Method or Silhouette Score to determine the optimal number of clusters.
- **Cluster Assignment:** Apply the clustering algorithm to assign each data point to a cluster.

### 3. Evaluation:

- **Cluster Validation:** Validate the quality of clusters using metrics like silhouette score or Davies-Bouldin index.
- **Interpretation:** Analyze the characteristics of each cluster to understand the underlying patterns.

### 4. Visualization:

- **Power BI Dashboards:** Create interactive dashboards in Power BI to visualize the clusters and their characteristics.
- **Charts and Graphs:** Use pie charts, bar charts, and scatter plots to display the distribution of deaths across clusters.

## Results
The clustering analysis helps in understanding the distribution of deaths across different regions and locations, revealing that most deaths occur in hospitals. Weekly death trends are also analyzed, providing valuable insights for health authorities.

# Task 3: Applying Association Rules in Data Mining for Market Basket Analysis

## Introduction
This task applies association rule mining to analyze customer purchasing patterns and derive insights for improving sales strategies.

## Datasets
The dataset comprises transaction records from a retail store, capturing the items purchased by customers.

## Explanation and Preparation
The dataset is prepared and analyzed using the arules package in R, which is specifically designed for mining association rules.

## Data Mining Process

### 1. Data Preparation:

- **Data Cleaning:** Handle missing values and ensure data consistency.
- **Transaction Formatting:** Convert the dataset into a transactional format suitable for association rule mining.
- **Exploratory Analysis:** Perform exploratory data analysis to understand the frequency of items and transactions.

### 2. Association Rule Mining:

- **Algorithm Selection:** Use the Apriori algorithm to generate frequent itemsets and association rules.
- **Parameter Tuning:** Set appropriate thresholds for support, confidence, and lift to filter out significant rules.
- **Rule Generation:** Apply the algorithm to generate a list of association rules that meet the specified criteria.

### 3. Evaluation:

- **Rule Validation:** Validate the strength and significance of the generated rules using metrics like support, confidence, and lift.
- **Interpretation:** Analyze the rules to identify strong associations and patterns in customer purchasing behavior.

### 4. Visualization:

- **Graphical Representations:** Use visualizations such as item frequency plots and rule graphs to present the findings.
- **Actionable Insights:** Derive actionable insights for business strategies, such as product placement and cross-selling opportunities.

## Results
The analysis identifies significant association rules that highlight frequently co-purchased items. These insights can help retailers optimize product placements and marketing strategies to enhance sales.

