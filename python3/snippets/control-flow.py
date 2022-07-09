"""
Conditional Statements
"""
var = "Good"

if var == "Good":
  print("200")
elif var != "Bad":
  print(var)
else:
  print("400")
#200

"""
Loop Statements
"""
for i in range(5):
  print(i)
"""
0
1
2
3
4
"""

# range(start, stop, step)
for i in range(2, 10, 2):
  print(i)
"""
2
4
6
8
"""

# in
a = [1, 3, 5, 7]
for ele in a:
  print(ele)
"""
1
3
5
7
"""

# while
count = 5
while count > 0:
  print(count)
  count -= 1
"""
5
4
3
2
1
"""

"""
Jump Statements
"""
# break
for i in range(5):
  print(i)
  if i == 3:
    break
"""
0
1
2
3
"""

# continue
for i in range(5):
  if i == 3:
    continue
  print(i)
"""
0
1
2
4
"""

# pass
for i in range(5):
  if i % 2 == 0:
    pass
  else:
    print(i)
"""
1
3
"""

# return
def func(x):
  if x == 'Hello':
    return True
  else:
    return False

res = func("Hello")
print(res)
#True

# the function will take in a variable number of arguments
# and print all of their values
def tester1(*argv):
  for arg in argv:
    print(arg)

tester1('Sunday', 'Monday', 'Tuesday', 'Wednesday')
"""
Sunday
Monday
Tuesday
Wednesday
"""

# The function will take variable number of arguments
# and print them as key value pairs
def tester2(**kwargs):
  for key, value in kwargs.items():
    print(key, value)

tester2(Sunday = 1, Monday = 2, Tuesday = 3, Wednesday = 4)
"""
Sunday 1
Monday 2
Tuesday 3
Wednesday 4
"""

if __name__ == "__main__":
  print("main function")
#main function
