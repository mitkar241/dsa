import argparse

class ArgumentHandler:

  def __init__(self):
    self.args = self.getArgs()

  def getArgs(self):
    parser = argparse.ArgumentParser(description='Repo-Mapper : Parse necessary arguments.')
    parser.add_argument("-f", "--file", required=True, help="Provide file name", type=str)
    args = parser.parse_args()
    return args
  
  def getFile(self):
    return self.args.file