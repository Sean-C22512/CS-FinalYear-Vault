import pandas as pd

loans = pd.read_csv('loans.csv',header=None)

print(loans[2])
