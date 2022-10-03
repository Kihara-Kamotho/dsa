h = {} 
h2 = Hash.new 2 
h3 = Hash[]

p h.default # nil, the default value

puts h2.default # 2 

p h3.default # nil

h['one'] = 1 
h['two'] = 2 
h['three'] = 3 

p h.values_at('two', 'three')
p h.dig 'one' 

p h2.dig 'four' # 2, default value
p h2['five'] # 2
p h2['one'] # 2

p h3['one'] # nil, default value

p h3.dig 'six' # nil 

counts = {foo: 42}

p counts.default # nil, default value 

p counts[:foo] # 42

counts.default = 0 

p counts['bar'] # 0 unkonwn key results in a default value, when one is already set

p counts.values_at(:foo, 'bar', 'score') # [42, 0, 0]

