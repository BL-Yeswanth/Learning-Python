
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


np.random.seed(1)  

num_students = 200

data = {
    "student_id": range(1, num_students + 1),
    "math": np.random.randint(40, 100, num_students),
    "science": np.random.randint(40, 100, num_students),
    "english": np.random.randint(40, 100, num_students),
    "attendance_percent": np.random.randint(60, 100, num_students)
}

df = pd.DataFrame(data)

# averarge
df["total_score"] = df["math"] + df["science"] + df["english"]
df["average_score"] = df["total_score"] / 3

# Performance classification
def classify_performance(avg):
    if avg >= 75:
        return "Excellent"
    elif avg >= 60:
        return "Good"
    elif avg >= 50:
        return "Average"
    else:
        return "Poor"

df["performance"] = df["average_score"].apply(classify_performance)



# Weighted score
# Math = 40%, Science = 35%, English = 25%
weights = np.array([0.4, 0.35, 0.25])

scores = df[["math", "science", "english"]].values
df["weighted_score"] = np.dot(scores, weights)

# Standardization (Z-score)
df["math_std"] = (df["math"] - df["math"].mean()) / df["math"].std()
df["science_std"] = (df["science"] - df["science"].mean()) / df["science"].std()
df["english_std"] = (df["english"] - df["english"].mean()) / df["english"].std()

# -------------------------------
# 4. Visualizations (Matplotlib)
# -------------------------------

# Subject-wise average comparison
subject_means = df[["math", "science", "english"]].mean()

plt.figure(figsize=(8, 5))
plt.bar(subject_means.index, subject_means.values, color=["blue", "green", "orange"])
plt.title("Average Subject-wise Scores")
plt.ylabel("Average Marks")
plt.xlabel("Subjects")
plt.show()

# Attendance vs Academic Performance
plt.figure(figsize=(8, 5))
plt.scatter(df["attendance_percent"], df["average_score"], color="purple")
plt.title("Attendance vs Academic Performance")
plt.xlabel("Attendance Percentage")
plt.ylabel("Average Score")
plt.show()


# print("Sample Data:")
# print(df.head())

# print("\nPerformance Distribution:")
# print(df["performance"].value_counts())
