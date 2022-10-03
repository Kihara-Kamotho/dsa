# taking an object through its paces 
object = Object.new() # constructor

puts object.object_id # object_id

puts object.class # Object, every class in Ruby inherits from the Class class 

puts object.instance_of? Object # query if object is of the said class, return boolean

# puts object.instance_variable_defined? instance_var 

# private_methods
def object.greet name 
	'hello ' + name
end

puts object.greet 'Prisca'

p object.respond_to? :greet

# singleton_class 
p object.singleton_class

p object.singleton_class.object_id == object.object_id

p object.singleton_class.respond_to? :created_at

# public_methods 
p object.public_methods false 

# private_methods
p object.private_methods false

# singleton_methods
p object.singleton_methods 

# module 
module Pe
	def dribble
		rand(1..100)
	end
end

# extend
p object.extend Pe # returns an object
p object.dribble
# class 
class Test
	def hello
		'hello'
	end
end

t = Test.new() 
t2 = Test.new()

p t.hello 

p t2.public_send :hello 

p t2.send :hello

# define_singleton_method
def t2.timer 
	Time.now
end

p t2.timer

# protected_methods
p object.protected_methods

# ===
p object === t2

p Test.ancestors
