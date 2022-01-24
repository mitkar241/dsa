import re

class ReferencePopulator:
  
  def __init__(self, file_content, func_list):
    self.currentFunction = ""
    self.stack = []
    self.funcReferenceMap = {}
    self.file_content = file_content
    self.func_list = func_list

  def StoreFuncReferences(self, line):
    line = line.strip()
    line = re.sub(r"\([^()]*\)", ' ', line) # replace just bracket: r"[\()]"
    line = " ".join(line.split())
    wordlist = line.split(' ')
    for word in wordlist:
      partlist = word.split('.')
      for part in partlist:
        if part in self.func_list and word != self.currentFunction:
          self.funcReferenceMap[self.currentFunction].append(part)

  # Function to check parentheses
  def isFunctionCovered(self, line):
    char_list = list(line)
    for char in char_list:
      if char == '{':
        self.stack.append(char)
      elif char == '}':
        if self.stack[-1] == '{':
          self.stack = self.stack[:-1]
        else:
          self.stack.append(char)
    if len(self.stack) == 0:
      return True
    else:
      return False

  def MapFunctionReferences(self):
    isFuncCovered = True
    for line in self.file_content:
      if isFuncCovered == False:
        self.StoreFuncReferences(line)
        if self.isFunctionCovered(line) == True:
          isFuncCovered = True
      elif line.startswith("func"):
        line = re.sub(r"\([^()]*\)", '', line)
        line = " ".join(line.split())
        word_list = line.split(' ')
        if len(word_list) >= 2:
          funcname = word_list[1]
          self.currentFunction = funcname
          isFuncCovered = False
          self.funcReferenceMap[self.currentFunction] = []
          self.StoreFuncReferences(line)
          if self.isFunctionCovered(line) == True:
            isFuncCovered = True