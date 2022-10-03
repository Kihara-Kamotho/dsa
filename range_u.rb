# understanding Range Objects
# Range < Object 
# includes Enumerable 
# Range depicts a collection of objects between a given start and end value 

# creating ranges
# inclusive range: a..b
r = 1..9 
r2 = 'a'..'z' 

# exclusive range: a...b 
r3 = Range.new(10, 20)

# passing true as a third arg, means create an exclusive range
r4 = Range.new('A', 'Z', true) 

# querying 
# member?/include?/cover?

# include?/cover? 
# returns true if object is an element of self
# if both the start and end values are integers, include?/cover? behave the same way else differnt 
p r.include? 5 # true 
p r3.cover? 15 # true 

p r2.include? 'g' # true 

p r4.cover? 'ZZ' # false

p r4. member? 'Z' # false, its exclusive 

p r4.cover? 'X' # true 

# beginless & endless ranges 
# beginless ranges 
# have definite end value but no start value 
r5 = ..5 
r6 = nil..22 

p r6.last # 22 
p r5.last # 5 
p r5.begin # nil 
p r6.end # aka last 

# beginless ranges can be used to slice lists, arrays 
num_array = [1, 2, 3, 4, 5]

p num_array[..2]

# Endless range
# have definite start value but no end value 
r7 = (21..)
r8 = (30...) 

p r7.include? 100 # true, since end value is not defined. It could be any value.
p r8.end # nil 

# however == returns false for two endless ranges 
p r7 == r8 # false, the end value is different even if its unknown 

# can be used to slice array, from a certain value to the end of the array 
num_array.push(21, 25, 56, 62) 
p num_array  

r9 = (5..7) 
p r9 

# recall, arrays call its element thru indexes 
# so when a range is passes as an arg to an array, it too is treated as an index only that it has range object 
# the below method call, starts at index 5 and returns 3 elements according to the size of the range object; r9 
p num_array[r9] # [21, 25 , 56] 

# Ranges & other classes 

# core classes; Integer, Array, Symbol
# an object can be used as a range iff it implements the <=> instance method 
# the easiest way to get this method is by mixing-in the Comparable module 
# built-in classes that implement <=> by default; Array, Complex, File::Stat, Integer, Symbol, Rational, Numeric, Time

r25 = 1..100 
r26 = 51...60 

p r25.cover? r26 # true 

# a range can be iterated over if it implements the succ instance method 
# method succ is implemented in Integer, String & Symbol classes

# iterative methods defined in Range class; each, step & % 
r25.each {|i| p i*10}

r26.step {|i| p i+1}

# other iterative methods are acquired by mixing-in the Enumerable module ie; each_with_index, each_slice, reverse_each 
r9.reverse_each {|i| p i}

p enum_r8 = num_array.each_slice(2) # Enumerator object 

enum_r8.each {|i| p i} # iterate thru the Enumerator 
# user defined classes 
# include Comparable module & define instance method <=> 
# define instance method succ, to iterate over the range 

class A 
	include Comparable # <=> 
	attr_accessor :length 
	def initialize n
		@length = n
	end
	def succ 
		A.new(@length + 1)
	end 
	def <=> other 
		@length <=> other.length
	end
	def to_s 
		sprintf "%2d #{inspect}", @length
	end
	def inspect
		'X' * @length 
	end
end

r47 = A.new(3)..A.new(6)
p r47

p r47.cover? 'XXXXXXXX' # false 
# method succ, returns self + 1 

p r47.to_s 
p r47.to_a 
p r47.include?(A.new 4)

# exclude_end?; returns a boolean value based on whether the range is exclusive 
p r47.exclude_end? #false 

p r47.max # returns max value

p r47.minmax # returns a 2 element array of the min and max values 

# exercise
# list methods for creating, quering, iterating & converting range objects 
# using a user defined class, show how ranges are implemented 
