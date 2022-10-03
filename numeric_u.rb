# Numeric < Object 
# includes Comparable 
# all number classes inherit from Numeric; Integer, Range, Complex, Float 
# note that each integer is a single immutable object, usually passed by value 
# n = 1 
# n.object_id == 1.object_id  

# any user-defined class that inherits from Numeric must implement the coerce instance method 
# the numeric class; implements Artihmetic operations by default 

class Tally < Numeric
	def initialize(string) 
		@string = string
	end
	def to_s 
		@string
	end
	def to_i 
		# numerics are arithmetic, hence can be compared by size 
		@string.size
	end
	def <=> other 
		to_i <=> other.to_i 
	end
	def coerce other 
		[self.class.new('|'* other.to_i), self]
	end
	def + other 
		self.class.new('|' * (to_i + other.to_i))
	end
	def - other 
		self.class.new('|'* (to_i - other.to_i))
	end
	def * other 
		self.class.new('|'*(to_i * other.to_i)) 
	end
end

t1 = Tally.new 'hello' 
t2 = Tally.new 'bye' 

p t1.to_i 
p t2.to_i 

p t1.coerce t2 

p t1 + t2 

p t1*t2 

p t1 - t2 
