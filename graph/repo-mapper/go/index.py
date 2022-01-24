from argument_handler import ArgumentHandler
from file_cleaner import FileCleaner
from reference_populator import ReferencePopulator
from graph_plotter import GrpahPlotter

if __name__ == "__main__":
  args = ArgumentHandler()
  filename = args.getFile()
  file_content = []
  with open(filename) as file_pointer:
    file_content.extend(file_pointer)
    FILE = file_content
  fprocessor = FileCleaner(file_content)
  fprocessor.RemoveQuotes()
  fprocessor.RemoveComments()
  #fprocessor.PrintFile()
  fprocessor.StoreFuncNames()
  reference = ReferencePopulator(fprocessor.file_content, fprocessor.func_list)
  reference.MapFunctionReferences()
  plotter = GrpahPlotter()
  plotter.plotRepoGraph(reference.funcReferenceMap)
