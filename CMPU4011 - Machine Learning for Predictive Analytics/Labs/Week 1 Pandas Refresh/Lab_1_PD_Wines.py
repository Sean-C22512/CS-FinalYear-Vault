import pandas as pd
import os

os.system('clear')
reviews = pd.read_csv('winemag-data-130k-v2.csv')
desc = reviews['description']
first_description = reviews.description.iloc[1]
first_row = reviews.iloc[0,10]

print(first_row)