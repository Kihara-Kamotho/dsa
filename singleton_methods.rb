module Other
	def three()
	end
end

class Single
	def four()
	end
end

a = Single.new()

# singleton class
class << a
	def two()
	end
end

def a.one()
end 

puts a.singleton_methods(false) 
puts a.singleton_methods 
