from dataclasses import dataclass

class Self1:
  def __init__(self, x):
    self.x = x
   
ob = Self1("One")
print(ob.x)

@dataclass #annotation indicates that it is a dataclass module
class Self2:
   x: str

ob = Self2("two")
print(ob.x)

@dataclass
class Self3:
  x: any = "three" 

ob = Self3()
print(ob.x)
