class ListNode: 
	def __init__(self, val, next=None)->None: 
		self.val = val 
		self.next = next 
	
	#def kthLastElement(head, k): 
		# basecase for the list
		
		#if head = None: 
			#return 0
		#indexFromEnd = kthLastElement(head.next, k) + 1
		#if indexFromEnd == k: 
			#print(head.val)
		#return indexFromEnd 
		
	# Space complexity O(n) ; stacks; since we are storing each value as we iterate thru the stack. Its directly propotional to the size of the input 
	# Time complexity O(n) ; recursion; dependent on the number of times it has to call itself 
	
	def printKthLastElement(head, k): 
		fast = slow = head 
		for i in range(k):
			if not fast: 
				return None 
			fast = fast.next 
		while fast: 
			fast = fast.next 
			slow = slow.next 
		print(slow.val)
	
	# space complexity; O1; no extra space used 
	# time complexity; On; because of the iterations 
		


A = ListNode(1)
B = ListNode(2)
C = ListNode(3)
D = ListNode(4)
E = ListNode(5)

A.next = B 
B.next = C 
C.next = D 
D.next = E 


str = printKthLastElement(A, k) 

print(str)

