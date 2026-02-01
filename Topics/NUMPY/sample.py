import numpy as np

ls = [1, 2, 3, 4]
print(ls)
arr = np.array([1, 2, 3, 4])
print(arr)

a = [1, 2, 3]
b = [4, 5, 6]

# This will NOT add numbers
print(a + b)

a = np.array([1, 2, 3])
b = np.array([4, 5, 6])

print(a + b)

arr = np.array([10, 20, 30])

print(arr + 5)     # [15 25 35]
print(arr * 2)     # [20 40 60]
print(arr / 10)    # [1. 2. 3.]

np.zeros(5)
z = np.zeros((2, 3))
print(z)

o = np.ones((3, 4))
print(o)


r = np.arange(1, 10, 2)
print(r)  # [1 3 5 7 9]

arr2d = np.array([
    [1, 2, 3],
    [4, 5, 6]
])
print(arr2d)  
print(arr2d[0][1])

arr = np.arange(1,10,1)
arr3d = arr.reshape(3,3)
print(arr3d)

arr = np.array([10, 20, 30, 40])
sliced = arr[1:3]
print(sliced)

np.sum(arr)     # 100
np.mean(arr)    # 25.0
np.max(arr)     # 40
np.min(arr)     # 10

result = arr[arr > 20]
print(result)  # [30 40]

arr2d = np.array([[1, 2], [3, 4]])
r1 = arr2d.flatten()   # returns copy
r2 = arr2d.ravel()     # returns view (faster)

print(r1)
print(r2)

r3 = np.random.rand(3)
print(r3)

r4 = np.random.randint(1, 10, size=5)
print(r4)

r5 = np.linspace(1, 10, 5)
print(r5)

arr2d = np.array([[1, 2], [3, 4]])
r6 = arr2d + [10, 20]
print(r6)

arr = np.array([10, 25, 30, 15])
r7 = np.where(arr > 20, "High", "Low")
print(r7)

arr = np.array([40, 10, 30, 20])
r8 = np.sort(arr)
print(r8)

r9 = np.argmax(arr)
print(r9)

arr = np.array([1, 2, 2, 3, 4, 4])
r10 = np.unique(arr)
print(r10)

a = np.array([1, 2])
b = np.array([3, 4])
r11 = np.concatenate((a, b))
print(r11)
r12 = np.vstack((a, b))
print(r12)
r13 = np.hstack((a, b))
print(r13)

arr = np.array([1, 2, 3, 4, 5, 6])
r14 = np.split(arr, 3)
print(r14)


A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])
r15 = np.dot(A, B)
print(r15)

a = np.array([1, 2, 3])
b = a.copy()
c = a.view()
b[0] = 10
print(a)  # [1 2 3]
c[1] = 20
print(a)  # [ 1 20  3]