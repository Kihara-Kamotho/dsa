# Comparable objects are ordered; 1, 2, 3... 
# comparison operator; <=> 
# if objects are not comparable the <=> should return nil

class SizeMatters
	include Comparable 
	attr :str 
	def initialize str 
		@str = str 				
	end
	def <=> other 
		str.size <=> other.str.size
	end
	def inspect 
		@str
	end
end

s1 = SizeMatters.new("YYY")
s2 = SizeMatters.new("z")
s3 = SizeMatters.new("AA")

p s1 > s2

