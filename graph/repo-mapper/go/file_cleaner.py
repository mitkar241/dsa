import re

class FileCleaner:
  
  def __init__(self, file_content):
    self.file_content = file_content
    self.func_list = []
  
  def PrintFile(self):
    for line in self.file_content:
      print(line, end ="")

  def LeadingWhites(self, line):
    return line[0:line.find(line.strip())]

  def RemoveComments(self):
    do_skip_line = False
    is_2plus_double_cmt = False
    temp_2plus_double_cmt_line = ""
    temp_file = []
    idx = 0
    while idx < len(self.file_content):
      line = self.file_content[idx]
      #line = line.strip()
      if is_2plus_double_cmt == True:
        line = temp_2plus_double_cmt_line
        is_2plus_double_cmt = False
        temp_2plus_double_cmt_line = ""
      # search for //
      single_cmt = line.find('//')
      # for simplicity assuming double comment does not start twice on same line
      double_cmt_start = line.find('/*')
      double_cmt_end = line.find('*/')
      if single_cmt != -1:
        line = line[0:single_cmt] + '\n'
        if line.strip() != "\n":
          temp_file.append(line)
      elif double_cmt_start != -1 and double_cmt_end != -1:
        if double_cmt_start < double_cmt_end:
          line = line[0:double_cmt_start] + line[double_cmt_end+2:]
        elif double_cmt_end < double_cmt_start:
          line = self.LeadingWhites(line) + line[double_cmt_end+2:]
        if (line.find('/*') != -1) or (line.find('*/') != -1):
          idx -= 1
          is_2plus_double_cmt = True
          temp_2plus_double_cmt_line = line
        elif line.strip() != "\n":
          temp_file.append(line)
      elif double_cmt_start != -1:
        line = line[0:double_cmt_start] + '\n'
        if line.strip() != "\n":
          temp_file.append(line)
        # from now on skip lines
        do_skip_line = True
      elif double_cmt_end != -1:
        # this line has formatting issue - starting whitespaces gone
        line = self.LeadingWhites(line) + line[double_cmt_end+2:]
        temp_file.append(line)
        do_skip_line = False
      elif do_skip_line == False:
        temp_file.append(line)
      idx += 1
    self.file_content = temp_file

  def RemoveQuotes(self):
    temp_file = []
    idx = 0
    while idx < len(self.file_content):
      line = self.file_content[idx]
      line = re.sub(r'".*"', '""', line)
      line = re.sub(r'\'.*\'', '\'\'', line)
      temp_file.append(line)
      idx += 1
    self.file_content = temp_file

  def StoreFuncNames(self):
    for line in self.file_content:
      if line.startswith("func"):
        line = re.sub(r"\([^()]*\)", '', line)
        line = " ".join(line.split())
        word_list = line.split(' ')
        if len(word_list) >= 2:
          self.func_list.append(word_list[1])

