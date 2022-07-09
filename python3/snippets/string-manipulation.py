"""
Escape Sequences
"""
str_arr = [
  "Single quote = \'",
  "Double quote = \"",
  "Backslash = \\",
  "Newline = \n",
  "Carriage Return = \r",
  "Horizontal Tab = \t",
  "Backspace = \b",
  "Formfeed = \f",
  "Vertical Tab = \v",
  "Null Character = \0",
]
s = "\n".join(str_arr)
print(s)
"""
Single quote = '
Double quote = "
Backslash = \
Newline = 

Carriage Return = 
Horizontal Tab = 	
Backspace = 
Formfeed = 

Vertical Tab = 

Null Character = 
"""

"""
Multiline Strings
"""
s = '''Hello World!
This is a Multiline String.'''
print(s)
"""
Hello World!
This is a Multiline String.
"""

"""
Strings Indexing
"""
s = "Hello"
print(s[0], s[2], s[4])
#H l o
print(s[-1], s[-3], s[-5])
#o l H

"""
Strings Slicing
"""
s = "Hello"

# Slices the string from 0 to 3 indexes
print(s[0:3])
#Hel

# Slices the string from 3 to -1(same as 4) indexes
print(s[3:-1])
#l

"""
Case Conversion Functions
"""
s = "Hello"
print(s)
#Hello

# Converts string to uppercase
print(s.upper())
#HELLO

# Converts string to lowercase
print(s.lower())
#hello

# Checks if string is uppercase
print(s.isupper())
#False

# Checks if string is lowercase
print(s.islower())
#False

"""
Function	Explanation
"""
# if all characters in string are whitespaces
print("\t \n".isspace())
#True

# if given string is alphanumeric
print("abc123".isalnum())
#True

# if given character is alphabet
print("abc".isalpha())
#True

# if string starts with an uppercase letter and then rest of the characters are lowercase
print("Abc".istitle())
#True

"""
join() and split() Functions
"""
str_arr = ["One", "Two", "Three"]

# join function
s = ','.join(str_arr)
print(s)
#One,Two,Three

# split function
str_arr = s.split(',')
print(str_arr)
#['One', 'Two', 'Three']

"""
String Formatting
"""
first = "first"
second = "second"
s = "Sunday is the {} day of the week, whereas Monday is the {} day of the week".format(first, second)
print(s)
#Sunday is the first day of the week, whereas Monday is the second day of the week

"""
Template Strings
"""
from string import Template
name = 'mitkar241'
t = Template('Hey $name!')
s = t.substitute(name = name)
print(s)
#Hey mitkar241!
