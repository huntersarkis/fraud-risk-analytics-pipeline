# Load sqlite and pandas
import sqlite3
import pandas as pd

# Read CSV
df = pd.read_csv('data/raw/creditcard.csv')

# Connect to SQLite database
conn = sqlite3.connect('warehouse/fraud.db')

# Load dataframe into SQL table
df.to_sql('raw_transactions', conn, if_exists='replace', index=False)