example = ["Sunday", "Monday", "Tuesday", "Wednesday"];
example1 = ["Weekdays", "Weekends"]

print(example)

# Positive Indexing
print(example[0], example[1])

# Negative Indexing
print(example[-1])

# Positive Slicing
print(example[0:2])

# Negative Slicing
print(example[-3:-1])

example[0] = "Saturday"
print(example)

# Concatenation
example = example + example1
print(example)

# Replication
example1 = example1 * 3
print(example1)

del example[2]
print(example)

for ex in example:
  print(ex)

print("Sunday" in example)
print("Hello" not in example)

example.insert(1, 'Days')
print(example)

example.append('Days')
print(example)

# Sort in ascending order
example.sort()
print(example)
# Sort in descending order
example.sort(reverse = True)
print(example)

"""
List Comprehensions
"""
a = [0, 1, 2, 3]
# b will store values which are 1 greater than the values stored in a
b = [i + 1 for i in a]
print(b)
