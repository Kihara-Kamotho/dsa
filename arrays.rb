# working with arrays
# arrays are linear data structures since they have fixed size; length
# creating arrays 
# easiest way to create an array is using literal constructor

# Array < Object 

array_1 = ['Kenya', 'Uganda', 'Tanzania']

# create array of specific length with default values 
array_abc = Array.new(5, 'abc')

# with dynamic values
array_2 = Array.new(5) {|i| (i + 1).to_s}

# Array(); method 
array_3 = Array(:a => 'a', :b => 'b')

p array_3 # [[:a, 'a'] [:b, 'b']]

p array_2 # ['1', '2', '3', '4', '5']

p array_abc #['abc', 'abc', 'abc', 'abc', 'abc']

p array_1 #['Kenya', 'Uganda', 'Tanzania']

# manipulation 

p array_1.at 1 #Uganda

p array_2.slice 0, 2 # ['1', '2']

p array_2.take 1 # ['1'] 

p array_2.drop 1 # ['2', '3', '4', '5']

p array_1.insert 1, 'Ethiopia' # ['Kenya', 'Ethiopia', 'Uganda', 'Tanzania']

# a negative index is an offset from the end of the array
p array_2[-2] # 4 
p array_2[-3] # 3

# you can provide a default value if an index is not found, when using fetch 
p array_2.fetch(9, 'index does not exist')
 
# fetch is similar to slice 
# slice is similar to [] 
p array_2[1..4] # ['2', '3', '4', '5']

# shift removes the first value of an array while unshift adds
p array_1.shift # Kenya 

# delete; removes value at a given index 
array_abc.delete 5 # abc 

p array_abc.length # 4

# compact; removes nil values from array
array_abc << nil 
p array_abc # last value of array should be nil 

# use compact to remove nil 
p array_abc.compact! # mutates its receiver 

# uniq; removes duplicates from array 
# has a destructive counterpart; uniq!, that permanently mutates its receiver 
p array_abc.uniq

p array_abc 

array_abc.uniq! 

p array_abc 

# == iterating over an array == 
# recall that the Array class includes the Enumerable module 
# arrays have an each method since they are collection objects 
# defining an each method on an array overrides the Enumerable each method 
# for this illustration we are going to use array_2 
# note that chaining an each method on an object without providing a block returns an Enumerator object 
array_2.each {|i| puts i.to_i}

# reverse_each; iterates over the array in reverse order 
array_2.reverse_each {|i| puts i.to_i}

# map; creates a new array based on the receiver 
p array_2.map {|i| i.to_i * 10}

# == selecting from an array == 
# work by being provided a block 
# selecting from an array can either be destructive or non-destructive 
# destructive methods, mutates its receiver while non-destructive dont 
# non-destructive
 p array_2.select {|i| i.to_i > 2} # 3, 4, 5 :returns a new array where the condition holds
 
 p array_2.reject {|i| i.to_i <= 2} # 3, 4, 5
