class ListNode: 
	def __init__(self, val, next=None) -> None:
		self.val = val 
		self.next = next

	def kth_element(head, k): 
		fast = slow = head 
		for _ in range(k): 
			if not fast: 
				return None 
			fast = fast.next 
		while fast: 
			fast = fast.next 
			slow = slow.next 


A = ListNode(1)
B = ListNode(2)
C = ListNode(3)
D = ListNode(4)
E = ListNode(5)

A.next = B 
B.next = C 
C.next = D 
D.next = E 
