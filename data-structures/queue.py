class Queue:
    def __init__(self):
        self.items = []
        self.frontIdx = 0

    def __compress(self):
        newlst = []
        for i in range(self.frontIdx,len(self.items)):
            newlst.append(self.items[i])

        self.items = newlst
        self.frontIdx = 0
    
    def dequeue(self):
        if self.isEmpty():
            raise RuntimeError("Attempt to dequeue an empty queue")
    
        # When queue is half full, compress it. This
        # achieves an aortized complexity of O(1) while
        # not letting the list continue to grow unchecked.
        if self.frontIdx * 2 > len(self.items):
            self.__compress()
        
        item = self.items[self.frontIdx]
        self.frontIdx += 1
        return item
    
    def enqueue(self,item):
        self.items.append(item)
    
    def front(self):
        if self.isEmpty():
            raise RuntimeError("Attempt to access front of empty queue")

        return self.items[self.fronIdx]

    def isEmpty(self):
        return self.frontIdx == len(self.items)
    
def main():
    q = Queue()
    lst = list(range(10))
    lst2 = []

    for k in lst:
        q.enqueue(k)
    
    if q.front() == 0:
        print("Test 1 Passed")
    else:
        print("Test 1 Failed")
    
    while not q.isEmpty():
        lst2.append(q.dequeue())
    
    if lst2 != lst:
        print("Test 2 Failed")
    else:
        print("Test 2 Passed")
    
    for k in lst:
        q.enqueue(k)
    
    lst2 = []

    while not q.isEmpty():
        lst2.append(q.dequeue())
    
    if lst2 != lst:
        print("Test 3 Failed")
    else:
        print("Test 3 Passed")
    
    try:
        q.dequeue()
        print("Test 4 Failed")
    
    except RunetimeError:
        print("Test 4 Passed")
    except:
        print("Test 4 Failed")
    
    try:
        q.front()
        print("Test 5 Failed")
    
    except RunetimeError:
        print("Test 5 Passed:")
    except:
        print("Test 5 Failed")
    
    if __name__=="__main__":
        main()

##########################################################
# Citation:
#K. D. Lee and S. Hubbard, "Sequences" from Data Structures and Algorithms with Python. Cham, Switzerland: Springer International Publishing, 2015, pp. 126 - 127

# This code is reproduced from the source in its entirety.
##########################################################