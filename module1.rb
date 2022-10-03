# understanding include, prepend and extend
module A 
	def meth_a x 
		4 + x 
	end
end

module B 
	def meth_b n 
		if n > 100 
			puts 'big number' 
		else 
			puts 'small number' 
		end
	end
end

class C 
	include A 
	def meth_a x 
		4 - x
	end
end

class D 
	prepend A 
	def meth_a x 
		9 - x 
	end
end

class F
end

# instance objects 
c = C.new

# when you include a module, the search begins in the object`s parents class before the module
 p c.meth_a 2 # 2 
 
 d = D.new
 # when a module is prepended, the search for the message begins in the module then the class from which the receiver is an instance of.
 p d.meth_a 8 # 12
 
 # extend 
 e = D.new
 
 # returns an object
 f = e.extend A
 
 j = e.extend B
 
 p f.meth_a 10 # 14 
 
 p j.meth_b 200 # big number
 
g = F.new

h = g.extend A 

k = g.extend B 

p h.meth_a 1 # 5
 
p k.meth_b 99 # small number

