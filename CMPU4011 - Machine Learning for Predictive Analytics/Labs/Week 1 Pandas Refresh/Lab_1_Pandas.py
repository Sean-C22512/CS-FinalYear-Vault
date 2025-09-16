import pandas as pd

loans = pd.read_csv('loans.csv', header=None)  # Use relative path since the file is in the same directory

print(loans.head())