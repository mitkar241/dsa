import numpy as np   
import networkx as nx  
import matplotlib.pyplot as plt

class GrpahPlotter:
  
  def plotRepoGraph(self, funcReferenceMap):
    G = nx.DiGraph()
    for key, value in funcReferenceMap.items():
      for item in value:
        G.add_edge(key, item)
    nx.draw(G, with_labels=True) 
    plt.show()
