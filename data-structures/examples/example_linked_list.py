class LinkedList:

    # This class is used internally by the LinkedList class. It is
    # invisible from outside this class due to the two underscores
    # that precede the class name. Python mangles names so that they
    # are not recognizable outside the class when two underscores
    # precede a name but aren't followed by two underscores at the
    # end of the name (i.e. an operator name).
    class __Node():
        def __init__(self,item,next=None):
            self.item = item
            self.next = next
        
        def getItem(self):
            return self.item

        def getNext(self):
            return self.next

        def setItem(self, item):
            self.item = item
        
        def setNext(self,next):
            self.next = next

    def __init__(self,contents=[]):
        # Here we keep a reference to the first node in the linked list
        # and the last item in the linked list. They both point to a
        # dummy node to begin with. This dummy node will always be in
        # the first position in the list and will never contain an item.
        # Its purpose is to eliminate special cass in the code below.
        self.first = LinkedList.__Node(None,None)
        self.last = self.first
        self.numItems = 0

        for e in contents:
            self.append(e)

    def __getitem__(self,index):
        if index >= 0 and index < self.numItems:
            cursor = self.first.getNext()
            for i in range(index):
                cursor = cursor.getNext()

            return cursor.getItem()

        raise IndexError("LinkedList index out of range")

    def __setitem__(self,index,val):
        if index >= 0 and index < self.numItems:
            cursor = self.first.getNex()
            for i in range(index):
                cursor = cursor.getNext()
            
            cursor.setItem(val)
            return

        raise IndexError("LinkedList assignment index out of range")

    def __add__(self,other):
        if type(self != type(other):
            raise TypeError("Concatentate undefined for " + \
                str(type(self)) + " + " + str(type(other)))
            
            result = LinkedList()

            cursor = self.first.getNext()

            while cursor != None:
                result.append(cursor.getItem())
                cursor = cursor.getNext()
            
            cursor = other.first.getNext()

            while cursor != None:
                result.append(cursor.getItem())
                cursor = cursor.getNext()

        return result
    
    def append(self,item):
        node = LinkedList.__Node(item)
        self.last.setNext(node)
        self.last = nodeself.numItems += 1

    def insert(self,index,item):
        cursor = self.first
        if index < self.numItems:
            for i in range(index):
                cursor = cursor.getNex()
            
            node = LinkedList.__Node(item, cursor.getNext())
            cursor.setNext(node)
            self.numItems += 1
        else:
            self.append(item)

##########################################################
# Citation:
#K. D. Lee and S. Hubbard, "Sequences" from Data Structures and Algorithms with Python. Cham, Switzerland: Springer International Publishing, 2015, pp. 119 - 122

# This code is reproduced from the source in its entirety.
##########################################################