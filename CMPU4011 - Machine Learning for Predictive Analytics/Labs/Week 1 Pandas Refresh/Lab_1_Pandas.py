import pandas as pd

loans = pd.read_csv('loans.csv', header=None)  # Use relative path since the file is in the same directory

# Each of the “columns” of the tabular data is a Pandas data structure called Series, it behaves like a list.
# Try accessing all values in a column, or individual values, e.g.
# loans[2] will return all ages 
print(loans[2])

print("\n\n\n")

# loans[2][5] will return 61
print(loans[2][5])
# You can read more about Series in this tutorial. Try out the examples!
# https://towardsdatascience.com/gaining-a-solid-understanding-of-pandas-series-893fb8f785aa 






