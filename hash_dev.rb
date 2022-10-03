# use a hash to pass two required args at initialization for an object 
class Dev 
	attr_accessor :name, :lang 
	# more often than not using a hash as an arg and attr_accessor go hand in hand 
	def initialize hash 
		@name = hash[:name]
		@lang = hash[:lang]
	end
end

dev_1 = Dev.new(name: "Alphan", lang: "Ruby")

p dev_1.name + " loves " + dev_1.lang

# use a hash to add state to an object 
person = {}
person[:name] = 'Alphan' 
person[:lang] = 'Ruby' 

puts person[:name]
puts person['name']
# note; a hash key that has been set with : cannot be queried as a string... and vice-versa 

# user-defined hash 
class Book 
	attr_reader :author, :title 
	def initialize author, title 
		@author = author
		@title = title
	end
	def == other 
		self.class == other && 
		@author == other.author && 
		@title == other.title 
	end
	# alias 
	alias eql? ==
	def hash 
		@author.hash ^ @title.hash # xor 
	end
end

book_1 = Book.new 'Rick Ross', 'Dope' 
book_2 = Book.new 'Meek Mill', 'Wins and Losses'

reviews = {} 

reviews[book_1] = 'Short and sweet'
reviews[book_2] = 'Well detailed'

p reviews

p book_1.hash
p book_2.hash
