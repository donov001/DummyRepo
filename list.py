

class Node:
    def __init__(self, val = None):
        self.val = val
        self.next = None

class LinkedList:
    def __init__(self):
        self.head = None

    def printList(self):
        currVal = self.head
        while currVal != None:
            print (currVal.val)
            currVal = currVal.next

    def insertAtBeg(self, newData):
        nodeX = Node(newData)
        nodeX.next = self.head
        self.head = nodeX
    
    def insertAtEnd(self, newData):
        nodeX = Node(newData)
        currVal = self.head
        while currVal.next != None:
            currVal = currVal.next
        currVal.next = nodeX

list1 = LinkedList()
Node1 = Node("abc")
list1.head = Node1
Node2=Node("def")
Node3 = Node("ghi")

list1.head.next = Node2
Node2.next = Node3

list1.printList()

list1.insertAtBeg("123")
list1.insertAtEnd("xyz")
list1.printList()
