"""
Arithmetic Operators
"""
def addition(a, b):
  return a + b

def subtraction(a, b):
  return a - b

def multiplication(a, b):
  return a * b

def division(a, b):
  return a / b

def floored_division(a, b):
  return a // b

def modulo(a, b):
  return a % b

"""
Relational Operator
"""
def op_is_eq(a, b):
  if (type(a) == bool) and (type(b) == bool):
    return a is b
  return a == b

def op_is_ne(a, b):
  if (type(a) == bool) and (type(b) == bool):
    return a is not b
  return a != b

def op_is_gt(a, b):
  return a > b

def op_is_ge(a, b):
  return a >= b

def op_is_lt(a, b):
  return a < b

def op_is_le(a, b):
  return a <= b

"""
Boolean Operator
"""
def op_and(a, b):
  return a and b

def op_or(a, b):
  return a or b

def op_not(a):
  return not a

"""
Ternary Operator
"""
def op_min(a, b):
  min = a if a < b else b
  return min
