# includes methods for addressing collection objects, Array, Hash
array=[]
array << 1 
array.push 2
array << 3

# Querying 
# predicate methods return either T or F 
# any?, all?, none?, one? can also take a block

p array.include? 4 # false 

p array.any? 5 # false 

p array.count # 3 

p array.tally # {1:1, 2:1, 3:1}

p array.all? 

# fetching 
# first, last 

# to_a/entries 
p array.entries 

p array.take 2 # [1, 2]
p array.drop 1 # [2, 3]

p array.drop_while {|i| i>=3} # [1, 2]

p array.take_while {|i| i>=3} # [3]

# minmax 

p array.max # 3
p array.min # 1

p array.min_by {|i| i>0} # 1

p array.minmax # [1, 3]

# groups & partitions 
p array.group_by {|i| i>2} # groups array to sub-arrays

p array.partition {|i| i>2} # partition array into sub-arrays based on the block

array_enumerator = array.slice_after {|i| i>2} 

p array_enumerator

p array.slice_before {|i| i>2} # enumerator


p array.slice_when {|i| i>2} # enumerator

p array.chunk {|i| i>2}

# search and filter 

# find aka detect 
p array.find {|i| i>2} # [3]

# find_all, select, filter
p array.find_all {|i| i>1} # [2, 3]

# find_index is an alias of index 
# return the index value of the object passed as an arg else results to nil 
# if no block is given, returns an enumerator object 

p array.index 4 # nil
p array.index 3 # 2

p array.index {|i| i == 2} # 1

# reject; returns a new array of self where the self returns false 
p array.reject {|i| i>2} # [1, 2]

p array.uniq # removes duplicates 

# sorting 

p array.shift

p array.insert(1, 5)

p array.sort 

# sort_by; uses a block, returns self 
p array.sort_by {|i| i} 

names=['array', 'hash', 'set', 'range']

p names.sort_by {|i| i.size}

# iterating 
names.each {|i| p i.upcase} # returns self, passes each element to the block

# index 
p names.index 'array' # 0, returns the index of the element passed as an args

p names.each_index.each {|i| p names[i]}

# works quite like each 
# calls the block with each element
p names.each_entry {|i| p i.capitalize}

a=[]

(1..4).each_entry {|i| a.push i}

p a # [1, 2, 3, 4] 

# works for hashes as well 
h = {foo: 1, bar: 2, zoo: 3}

p h # hash object 

b=[]
h.each_entry {|i| b.push i}

p b

# class 
class Foo 
	include Enumerable 
	def each 
		yield 1 
		yield 2 
		yield 3, 4 
		yield 
	end
end 

f = Foo.new 
# each_entry method defined below overrides the method each for Enumerable as defined in the above class 
f.each_entry {|i| p i}

# each_with_index method calls each element together with its index
p names.each_with_index {|el, i|  puts "index #{i}: element #{el}"}

h={}

names.each_with_index {|el, i| h[el] = i}

(1..4).each_with_index {|el, i| h[el] = i}
# yet to figure out how this method works 

# each_with_object 
# calls each element with its index and the object as passed in the args list
p array.each_with_object(3) {|i, object| puts " index, #{i} : value #{object}"} # index = i, object = arg; 3

# other methods 

# collect is the same as map
p array.map {|i| puts i*100}

# note, return value of puts is usually nil

p array 

# filter_map 
# returns a subset of array where the block return True value 
array.filter_map {|i| p i*2 if i%5==0}

# flat_map 
# returns a flattened array of objects returned by the block
# flatten; returns one-dimensional array 
p array.flat_map {|i| -i*2}
# collect_concat is an alias of flat_map 

# grep; returns elements that holds true for a given object or values returned by a block 
p array.grep 3 # 3 

# returns a subset of self based on the args given 
array.grep 2..10 

# grep_v 
# returns an array of self, that do not match given pattern 
p array.grep_v 3 # array without element passed as arg; 3

# inject/reduce 
# returns an object, by combining all elements of an array 
p array.inject :+ 

# sum 
# returns sum of all elements in an array 
p array.sum 
# gives a result similar to that of reduce/inject 

# zip 
# combines each element with element of other Enumerable 
p array.zip [9, 9, 9] # [[2, 9], [3, 9], [5, 9]]

# with no block given, returns a new array of size self.count, whose members are also arrays 

# cycle method 
# calls each element with the block, for n times as passed as arg to cycle 

new_array = []

array.cycle(3) {|i| new_array.push i}

# output of the cycle method

p new_array 
