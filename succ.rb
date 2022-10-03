# range and user defined classes
class S
	include Comparable # <=> 
	def initialize n 
		@length = n
	end 
	def succ # ++ 
		S.new(@length + 1)
	end 
	def inspect # to_s 
		'x' * @length
	end
end

s = S.new 4 

p s.succ #5

s9 = S.new 8 

p s9.succ #9

zero = S.new 0

p zero.succ # 1 
