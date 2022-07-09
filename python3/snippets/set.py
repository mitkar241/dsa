s = {1, 2, 3}
print(s)
s = set([1, 2, 3])
print(s)
s = {1, 2, 3, 3, 2, 4, 5, 5}
print(s)

# Insert single element
s.add(6)
print(s)

# Insert multiple elements
s.update([6, 7, 8])
print(s)

# Remove will raise an error if the element is not in the set
s.remove(4)
print(s)
# Discard doesn't raise any errors
s.discard(1)

a = {1, 2, 3, 3, 2, 4, 5, 5}
b = {4, 6, 7, 9, 3}
# Performs the Intersection of 2 sets and prints them
print(a & b)
# Performs the Union of 2 sets and prints them
print(a | b)
# Performs the Difference of 2 sets and prints them
print(a - b) 
# Performs the Symmetric Difference of 2 sets and prints them
print(a ^ b)

"""
Set Comprehension
"""
a = {0, 1, 2, 3}
# b will store squares of the elements of a
b = {i ** 2 for i in a}
print(b)
