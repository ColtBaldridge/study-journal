

class Node:
    def __init__(self, data, next=None):
        self.item = data
        self.next = next
    
    def __repr__(self):
        '''Return a brief representation of the Node.'''
        yield self.item
        yield self.next


class LinkedList:
    
    def __init__(self, contents=[]):
        '''
        Basic singly linked list data structure.
        '''
        self.nodes = []
        self.head = None
    
    # REQUIRED METHODS
    # > Traverse the list
    def traverse(self):
        ...
    # > Search for a node
    def search(self, target):
        ...
    # > Insert a node at a given location
    def insert(self, data, location):
        ...
    # > Delete a node at a given location
    def remove(self, target):
        ...
    # > Concatentate this list with another linked list
    # > Sort the list
    #    Look into the various sorting algorithms.
    #    Use the most approprite one.
    # > Reverse the list
    def reverse(self):
        ...
