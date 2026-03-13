# Import pandas
import pandas as pd

# Load dataset
df = pd.read_csv('data/raw/creditcard.csv')
print(df.head())

# Determine the size of the dataset
print(df.info())

# Examine fraud distribution
print(df['Class'].value_counts(0, 1))
