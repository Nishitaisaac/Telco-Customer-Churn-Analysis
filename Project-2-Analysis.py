import pandas as pd
import numpy as np
import matplotlib.pyplot as pltd

# Load the dataset
df = pd.read_excel(r"D:\Project 2 [ Telco Customer Churn  2026 ]\Telco_customer_churn.xlsx")
df.head()

import os
print(os.listdir(r"D:\Project 2 [ Telco Customer Churn  2026 ]"))

import pandas as pd
df = pd.read_excel(r"D:\Project 2 [ Telco Customer Churn  2026 ]\Telco_customer_churn.xlsx")
print(df.head())
 
 # basic information about the dataset
df.shape
print(df.shape)

df.info()
print(df.info())

df.columns
print(df.columns)

df.isnull().sum()
print(df.isnull().sum())

# Target Variable Distribution
print(df['Churn Label'].value_counts())

#EDA (Exploratory Data Analysis)

# Discrete Variables
print(df.describe())

# Categorical Analysis
print(df['Gender'].value_counts())
print(df['Contract'].value_counts())
print(df['Churn Label'].value_counts())

#Contract Type vs Churn Label

print(pd.crosstab(df['Contract'], df['Churn Label']))

#Internet Service vs Churn Label

print(pd.crosstab(df['Internet Service'], df['Churn Label']))

# Payment Method vs Churn Label

print(pd.crosstab(df['Payment Method'], df['Churn Label']))


# Tenure Months vs Churn Label
print(df.groupby('Churn Label')['Tenure Months'].mean())



#contract type vs churn label chart

contract_churn = pd.crosstab(df['Contract'], df['Churn Label'])
contract_churn.plot(kind='bar')
pltd.title('Contract Type vs Churn Label')
pltd.xlabel('Contract Type')
pltd.ylabel('Customers')
pltd.xticks(rotation=0)
print(pltd.show())

#Internet Service vs Churn Label chart

internet_churn = pd.crosstab(df['Internet Service'], df['Churn Label'])
internet_churn.plot(kind='bar')
pltd.title('Internet Service vs Churn Label')
pltd.xlabel('Internet Service')
pltd.ylabel('Customers')
pltd.xticks(rotation=0)
print(pltd.show())

#Payment Method vs Churn Label chart
payment_churn = pd.crosstab(df['Payment Method'], df['Churn Label'])
payment_churn.plot(kind='barh', figsize=(8,4))
pltd.title('Payment Method vs Churn Label')
pltd.xlabel('Payment Method')           
pltd.ylabel('Customers')
pltd.xticks(rotation=30)
print(pltd.show())

# Tenure Months vs Churn Label chart
tenure_churn = df.groupby('Churn Label')['Tenure Months'].mean()
tenure_churn.plot(kind='bar')
pltd.title('Tenure Months vs Churn Label')
pltd.xlabel('Churn Label')
pltd.ylabel('Tenure Months (average)')
pltd.xticks(rotation=0)
print(pltd.show())

