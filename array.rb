# alphan kihara 
# oop 
# class, objects
array = [1, 2, 3, 4, 5] 
array_2 = Array.new(3, 'abc')

p array.concat array_2 

p array[-1]

p array

# shift, unshift, pop, slice, 
# includes Enumerable 
array.each {
  |i| 
  p i = i * 10
  # p -i 
}

# using this array for binary search 
p array.slice!(5, 8)
# the array should be sorted 
last =  array[-1] # last
first = array[0]  # first 

p last, first 


