# Proc < Object 
# procs are encapsulation of blocks of code that remember the context in which they are defined 
# can be called, passed as method args, passed to other procs ...
# core feature of Ruby`s functional programming 

square = Proc.new {|i| i**2}

p square.call 3
# shorthands 
p square[4]
p square.(5)

# procs as closures 
def gen_times factor 
	Proc.new{|i| i * factor} # remembers the value of factor at the time of creation 
end

twos = gen_times 2 

p twos.call 4 # 8

# creating procs 

# Proc class constructor 
cube = Proc.new {|i| i*i*i}

p cube.call 3 # 27 

# proc, Kernel#proc shorthand of Proc.new 

proc2 = proc {|i| i**2} 

p proc2.call 5 # 25 

# proc as an argument
def make_proc(&block) 
	block 
end

proc3 = make_proc {|i| i + 5}

p proc3.call 1 # 6

# using lambda semantics, kernel#lambda method 
proc4 = lambda {|i| i**2}
p proc4.call 6 # 36

# using the lambda shorthand 
proc5 = ->(i) {i + 5}

p proc5.call 2 # 7

