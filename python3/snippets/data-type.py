"""
Text Type:	str
"""
def dt_str():
  #x = str("Hello World")
  x = "Hello World"
  return x

"""
Numeric Types:	int, float, complex
"""
def dt_int():
  #x = int(20)
  x = 20
  return x

def dt_float():
  #x = float(20.5)
  x = 20.5
  return x

def dt_complex():
  #x = complex(1j)
  x = 1j
  return x

"""
Sequence Types:	list, tuple, range
"""
def dt_list():
  #x = list(("apple", "banana", "cherry"))
  x = ["apple", "banana", "cherry"]
  return x

def dt_tuple():
  #x = tuple(("apple", "banana", "cherry"))
  x = ("apple", "banana", "cherry")
  return x

def dt_range():
  #x = range(6)
  x = range(6)
  return x

"""
Mapping Type:	dict
"""
def dt_dict():
  #x = dict(name="John", age=36)
  x = {"name" : "John", "age" : 36}
  return x

"""
Set Types:	set, frozenset
"""
def dt_set():
  #x = set(("apple", "banana", "cherry"))
  x = {"apple", "banana", "cherry"}
  return x

def dt_frozenset():
  #x = frozenset(("apple", "banana", "cherry"))
  x = frozenset({"apple", "banana", "cherry"})
  return x

"""
Boolean Type:	bool
"""
def dt_bool():
  #x = bool(5)
  x = True
  return x

"""
Binary Types:	bytes, bytearray, memoryview
"""
def dt_bytes():
  #x = bytes(5)
  x = b"Hello"
  return x

def dt_bytearray():
  x = bytearray(5)
  return x

def dt_memoryview():
  x = memoryview(bytes(5))
  return x

"""
None Type:	NoneType
"""
def dt_none():
  x = None
  return x
