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
cols = ['country', 'province', 'region_1', 'region_2']
df = reviews.loc[rows][cols]
df2 = reviews.loc[rows, cols]
df3 = reviews.loc[0:100, 'country':'region_2']
df4 = reviews.iloc[0:100, 0:4]
italian_wines = reviews[reviews.country == 'Italy']
reviews.loc[reviews.country.isin(['Australia','New Zealand'])]
top_oceania_wines = reviews.loc[reviews.country.isin(['Australia','New Zealand']) & (reviews.points >= 95)]

# Exercises to be done in Lab_1_PD_Wines.py
# 1.) Identify the list of top wines (wines with score at least 99)
top_wines = reviews.loc[reviews.points >= 99]
#print(top_wines)


# 2.) Identify the price of the most expensive wine on the list of top wines
most_expensive = top_wines.loc[top_wines.points.idxmax()]

# 3.)	Print the details (rows of data) for the most expensive top wine(s)
print(most_expensive)


