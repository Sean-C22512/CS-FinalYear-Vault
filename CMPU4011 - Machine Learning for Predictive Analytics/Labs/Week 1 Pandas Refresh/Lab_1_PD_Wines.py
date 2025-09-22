import pandas as pd
import os

os.system('clear')
reviews = pd.read_csv('winemag-data-130k-v2.csv')
desc = reviews['description']
#first_description = reviews.description.iloc[1]
first_row = reviews.iloc[0]
first_descriptions = reviews.description.iloc[0:10]
sample_reviews = reviews.iloc[[1,2,3,5,8]]

rows = [0,1,10,100]
cols = ['country', 'province', 'region_1', 'region_2']r
df = reviews.loc[rows][cols]
df2 = reviews.loc[rows, cols]
df3 = reviews.loc[0:100, 'country':'region_2']
df4 = reviews.iloc[0:100, 0:4]
print(df4)
print(df3)
print(df2)
print(df)



