class Person 
	attr_reader :name, :friends, :age
	attr_accessor :weight
	
	def initialize name, age 
		@name = name
		@age = age
		@friends = []
	end
	def height # cm
		@height = rand(100..300)
		print @height
		
		if @height > 185 
			return 'tall'
		else 
			return 'short'
		end
	end
	def friend_list friend 
		@friends << friend
	end
end

person_1 = Person.new "Jane", 20
person_2 = Person.new "Amos", 25
person_3 = Person.new "Peres", 19

print person_1.name
puts person_1.height 
person_1.friend_list 'Carol'
person_1.friend_list 'Joe'

p person_1.friends

print person_2.name
puts person_2.height

print person_3.name
puts person_3.height

person_3_friends = person_3.friend_list person_2

puts person_3.friends

# friend should also be a person with dynamic state
person_3_friends.each do |i| 
	puts i.name.upcase 
	puts i.age
end 

person_3.weight=120

p person_3
