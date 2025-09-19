import pandas as pd
import os

os.system('clear')
reviews = pd.read_csv('winemag-data-130k-v2.csv')
desc = reviews['description']
first_description = desc[1]

print(first_description)