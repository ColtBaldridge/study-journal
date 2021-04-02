

class Node:

    def __init__(self, data, next=None):
        self.item = data
        self.next = next

    def set_item(self, data):
        self.item = data
    
    def set_next(self, next_node):
        self.next = next_node