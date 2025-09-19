

# Q4
import pandas as pd
import os

os.system('clear')
loans = pd.read_csv('loans.csv', header=None)  # Use relative path since the file is in the same directory
wines = pd.read_csv('winemag-data-130k-v2.csv')  # Use relative path since the file is in the same directory

# Q5
# print(loans[2])
# print("\n\n\n")
# print(loans[2][5])

# Q6
loans.columns = ['id', 'occupation', 'age', 'loan-to-salary', 'outcome']
# print(f"loans['age'] - >\n{loans['age']}")
# print("\n\n\n")
# print(f"loans.age - >\n{loans.age}")

# Q7
#print(loans.dtypes)
# You can change the type of the data by using astype( ) function
# for example if you wanted to change 'age' to a float
#loans['age'] = loans['age'].astype(float)

# Q8
#print(loans.head())
print(loans[1:4])