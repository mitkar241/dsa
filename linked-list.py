import argparse

# Node class
class Node:

  # Constructor to initialize the node object
  def __init__(self, data):
    self.data = data
    self.next = None


class LinkedList:

  # Function to initialize head
  def __init__(self):
    self.head = None

  # Function to insert a new node at the beginning
  def pushNode(self, new_data):
    new_node = Node(new_data)
    new_node.next = self.head
    self.head = new_node

  # Given a reference to the head of a list and a key,
  # delete the first occurrence of key in linked list
  def deleteNodeByKey(self, key):
    # Store head node
    temp = self.head
    # If head node itself holds the key to be deleted
    if (temp is not None):
      if (temp.data == key):
        self.head = temp.next
        temp = None
        return
    # Search for the key to be deleted, keep track of the
    # previous node as we need to change 'prev.next'
    while(temp is not None):
      if temp.data == key:
        break
      prev = temp
      temp = temp.next
    # if key was not present in linked list
    if(temp == None):
      return
    # Unlink the node from linked list
    prev.next = temp.next
    temp = None

  # Given a reference to the head of a list 
  # and a position, delete the node at a given position
  def deleteNodeByPosition(self, position):
    # If linked list is empty
    if self.head == None:
      return 
    # Store head node
    temp = self.head
    # If head needs to be removed
    if position == 0:
      self.head = temp.next
      temp = None
      return
    # Find previous node of the node to be deleted
    for i in range(position -1 ):
      temp = temp.next
      if temp is None:
        break
    # If position is more than number of nodes
    if temp is None:
      return 
    if temp.next is None:
      return 
    # Node temp.next is the node to be deleted
    # store pointer to the next of node to be deleted
    next = temp.next.next
    # Unlink the node from linked list
    temp.next = None
    temp.next = next 

  # Utility function to print the linked LinkedList
  def printLList(self):
    temp = self.head
    output_list = []
    while(temp):
      output_list.append(temp.data)
      if len(output_list) > 10:
        break
      temp = temp.next
    print(output_list)

  # This Function checks whether the value
  # item present in the linked list
  def search(self, item):
    # Initialize current to head
    current = self.head
    # loop till current not equal to None
    while current != None:
      if current.data == item:
        print({"found":True,"item":item})
        return # data found 
      current = current.next
    print({"found":False,"item":item})
    return # Data Not found

  # This function counts number of nodes in Linked List
  # iteratively, given 'node' as starting node.
  def getCount(self):
    temp = self.head # Initialise temp
    count = 0 # Initialise count
    # Loop while end of linked list is not reached
    while (temp):
        count += 1
        temp = temp.next
    print({"length":count})

  # Returns data at given index in linked list
  def getNth(self, index):
    current = self.head  # Initialise temp
    count = 0  # Index of current node
    # Loop while end of linked list is not reached
    while (current):
      if (count == index):
        print({"item":current.data})
        return
      count += 1
      current = current.next
    # if we get to this line, the caller was asking
    # for a non-existent element so we assert fail
    # assert(False)
    print({"found":False,"index":index})

  # Function to get the nth node from 
  # the last of a linked list 
  def printNthFromLast(self, n):
    temp = self.head # used temp variable
    if n <= 0:
      print({"found":False,"error":"rindex should be non-zero","rindex":0})
      return
    length = 0
    # find length
    while temp is not None:
      temp = temp.next
      length += 1
    if n > length:
      print({"found":False,"error":"index is greater than length of linked list","length":length,"rindex":n})
      return
    temp = self.head
    for i in range(0, length - n):
      temp = temp.next
    print({"found":True,"item":temp.data})

  # Counts the no . of occurrences of a node
  # (search_for) in a linked list (head)
  def getFrequency(self, item):
    current = self.head
    count = 0
    while(current is not None):
      if current.data == item:
        count += 1
      current = current.next
    print({"item":item,"count":count})

  # Function to reverse the linked list
  def reverseLList(self):
    prev = None
    current = self.head
    while(current is not None):
      next = current.next
      current.next = prev
      prev = current
      current = next
    self.head = prev

  # Function that returns middle.
  def printMiddle(self):
    # Initialize two pointers, one will go one step a time (slow), another two at a time (fast)
    slow = self.head
    fast = self.head
    # Iterate till fast's next is null (fast reaches end)
    while fast and fast.next:
      slow = slow.next
      fast = fast.next.next
    print({"found":True,"item":slow.data})

  # Function to create a loop in the
  # Linked List. This function creates
  # a loop by connecting the last node
  # to n^th node of the linked list,
  # (counting first node as 1)
  def createLoop(self, n):
    # LoopNode is the connecting node to
    # the last node of linked list
    LoopNode = self.head
    for _ in range(1, n):
      LoopNode = LoopNode.next
    # end is the last node of the Linked List
    end = self.head
    while(end.next):
      end = end.next
    # Creating the loop
    end.next = LoopNode

  # Function to detect the loop and return
  # the length of the loop if the returned
  # value is zero, that means that either
  # the linked list is empty or the linked
  # list doesn't have any loop
  def detectLoop(self):
    # if linked list is empty then there
    # is no loop, so return 0
    if self.head is None:
      print({"loop_length":0})
    # Using Floyd’s Cycle-Finding
    # Algorithm/ Slow-Fast Pointer Method
    slow = self.head
    fast = self.head
    flag = 0
    # to show that both slow and fast are at start of the Linked List
    while(slow and slow.next and fast and fast.next and fast.next.next):
      if slow == fast and flag != 0:
        # Means loop is confirmed in the
        # Linked List. Now slow and fast
        # are both at the same node which
        # is part of the loop
        count = 1
        slow = slow.next
        while(slow != fast):
          slow = slow.next
          count += 1
        print({"loop_length":count})
        return
      slow = slow.next
      fast = fast.next.next
      flag = 1
    print({"loop_length":0})

  # Function to remove duplicates from a
  # unsorted linked list
  def removeDuplicates(self):
    # Base case of empty list or
    # list with only one element
    if self.head is None or self.head.next is None:
      return
    # Hash to store seen values
    hash = set()
    current = self.head
    hash.add(self.head.data)
    while current.next is not None:
      if current.next.data in hash:
        current.next = current.next.next
      else:
        hash.add(current.next.data)
        current = current.next

# print ("This is always executed")

if __name__ == "__main__":
  # print("Executed when invoked directly")

  # Driver program to test above functions
  llist = LinkedList()

  parser = argparse.ArgumentParser(prog='LLIST', description='Interactive Linked List')
  parser.add_argument('cmd', choices=['add','print','frequency','middle','get','rget','search','length','del-pos','del-key','reverse','loop-create','loop-length','undup','help','quit'])

  while True:
    cli_input = input('$: ')
    input_list = cli_input.split(" ")
    command = input_list[0]
    value_list = input_list[1:]
    if command == 'exit':
      exit()
    elif command == 'add':
      llist.pushNode(int(value_list[0]))
    elif command == 'print':
      llist.printLList()
    elif command == 'search':
      llist.search(int(value_list[0]))
    elif command == 'get':
      llist.getNth(int(value_list[0]))
    elif command == 'rget':
      llist.printNthFromLast(int(value_list[0]))
    elif command == 'length':
      llist.getCount()
    elif command == 'frequency':
      llist.getFrequency(int(value_list[0]))
    elif command == 'middle':
      llist.printMiddle()
    elif command == 'del-pos':
      llist.deleteNodeByPosition(int(value_list[0]))
    elif command == 'del-key':
      llist.deleteNodeByKey(int(value_list[0]))
    elif command == 'reverse':
      llist.reverseLList()
    elif command == 'loop-create':
      llist.createLoop(int(value_list[0]))
    elif command == 'loop-length':
      llist.detectLoop()
    elif command == 'undup':
      llist.removeDuplicates()
    # add command to swap indices
    else:
      print({"error":"Invalid command","command":command})
    continue
else:
  print("Executed when imported")
