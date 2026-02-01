import pandas as pd

s = pd.Series([1, 2, 3, 4, 5])
print(s)

data = {
    "Name": ["Ram", "Shyam", "jam", "rolex"],
    "Age": [25, 22, 30, 28],
    "City": ["Delhi", "Mumbai", "Pune", "Mumbai"]
}

df = pd.DataFrame(data)
print(df)
df.head()     # first 5 rows
df.tail()     # last 5 rows
df.info()     # data types & nulls
df.describe() # statistics

print(df["Name"])
print(df[["Name", "Age"]])


print(df.loc[0])     # by label
print(df.iloc[1])    # by index number

print(df[df["Age"] > 26])
print(df[(df["Age"]>26) & (df["City"]=="Mumbai")])

df["Salary"] = [40000, 50000, 45000, 60000]

df["Age"] = df["Age"] + 1
df.loc[df["Age"] > 25, "Salary"] += 1000
print(df.drop("City", axis=1))
print(df.drop(3))
df.isnull()
print(df.sort_values("Age"))
print(df.sort_values("Age", ascending=False))
print("------*-------")
print(df.groupby("City")["Salary"].mean())

print(df)


