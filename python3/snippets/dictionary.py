dict = {'first' : 'sunday', 'second' : 'monday', 'third' : 'tuesday'}
# dict.keys() method will print only the keys of the dictionary
for key in dict.keys():
  print(key)
# dict.values() method will print only the values of the corressponding keys of the dictionary
for value in dict.values():
  print(value)

dict['fourth'] = 'wednesday'
for item in dict.items():
  print(item)

dict['third'] = 'wednesday'
for item in dict.items():
  print(item)

del dict['third']
for item in dict.items():
  print(item)

dict1 = {'first' : 'sunday', 'second' : 'monday', 'third' : 'tuesday'}
dict2 = {1: 3, 2: 4, 3: 5}
dict1.update(dict2)
print(dict1)

"""
Dict Comprehension
"""
a = {'Hello':'World', 'First': 1}
# b stores elements of a in value-key pair format
b = {val: k for k , val in a.items()}
print(b)
