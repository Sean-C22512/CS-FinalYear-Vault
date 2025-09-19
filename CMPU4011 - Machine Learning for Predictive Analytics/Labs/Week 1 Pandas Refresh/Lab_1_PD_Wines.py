import pandas as pd
import os

os.system('clear')
reviews = pd.read_csv('winemag-data-130k-v2.csv')
desc = reviews['description']
#first_description = reviews.description.iloc[1]
first_row = reviews.iloc[0]
first_descriptions = reviews.iloc[0]

# for i in range(10):
#     print(f"\n\n{reviews.iloc[i]}")

