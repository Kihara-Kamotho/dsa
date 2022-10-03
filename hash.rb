# Hashes are collection objects 
# includes the Enumerable module 
# rep by key, value pairs 

# Hash < Object 

# creating a hash 
hash_one = {} 

p hash_one.class 

hash_two = Hash.new

hash_three = Hash[]

hash_three[3] = :three 
hash_three[4] = :four
hash_three[5] = :five 

puts hash_three # {3 => :three, 4 => :four, 5 => :five}
# accessing hash elements 

puts hash_three[5] # five 

hash_three[5] = "five" 

puts hash_three 

# arrays can be hash keys
a0 = [1,2,3]
a1 = [4,5,6]

h4 = {a0 => 1, a1 => 2}

puts h4

puts h4[a0]

puts h4.hash 

puts h4[a1]

# modifying array index changes the hash value 

a0[0] = :bam 

puts h4.hash

puts h4.include?(a0)

puts h4[a0]

# you can repaire the hash index using method, rehash 

p a0 # array [:bam, 2, 3]

p a1 # [4, 5, 6]

# h4.rehash{[:bam, 2, 3]=>1, [4, 5, 6]=>2}

# h4[0] # 1
 
# hash, default value 
h = {}

puts h.default # nil

h.default=2

puts h.default # 2 

h2 = Hash.new 3

puts h2.default # 3

# [], values_at?, dig 
puts 'h'
puts h 
p h[0] # 3
p h.values_at(0, 1)
p h.dig 2

# default proc
