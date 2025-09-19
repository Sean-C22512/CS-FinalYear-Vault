import pandas as pd
import os

os.system('clear')
wines = pd.read_csv('winemag-data-130k-v2.csv')

print(wines.head())