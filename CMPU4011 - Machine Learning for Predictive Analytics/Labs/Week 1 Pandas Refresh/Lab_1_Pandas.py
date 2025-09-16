# Q4
import pandas as pd
loans = pd.read_csv('loans.csv', header=None)  # Use relative path since the file is in the same directory

# #5
# print(loans[2])
# print("\n\n\n")
# print(loans[2][5])

# #6
loans.columns = ['id', 'occupation', 'age', 'loan-to-salary', 'outcome']
# print(f"loans['age'] - >\n{loans['age']}")
# print("\n\n\n")
# print(f"loans.age - >\n{loans.age}")

#7

print(loans.dtypes)