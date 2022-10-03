# Rational < Numeric 
# a rational number is such that a/b where the result of a equals a/1, such that a >= 1 

# creating rational numbers 
# literal constructor 
# n = 1/2 
n = 1/2 
p n

# Kernel method Rational 
r = Rational(2/3)
p r 

r2 = 4/2 
p r2.to_r 

# to_r method 
p 6.to_r

# you can create rational number from floats and strings as well
r3 = 0.4/3 
p r3.to_r 

r4 = Rational('1.5')
p r4 

# a random number is an exact number, meaning if applied as a diviser equals an exact number as well
p res = 10.times.inject(0) {|i| i + 0.1}
p res2 = 10.times.inject(0) {|i| i + Rational('0.1')}

# when b is an inexact number the result is also an inexact number 
# x/y 
p 10/3 # 3 
p 10/3.0 # 3.333 
p 10/ (Rational('3.0')) # 3 
p 10/ (3).to_r 

# a sample of instance methods 
# *, **, abs, abs2, numerator, denominator, ceil, floor, to_i, to_f, to_s 
