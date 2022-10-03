# Complex < Numeric 
# a complex number is a number with a real part and an imaginary part as well . 
# a + bi 
# a rep the real number, b the imaginary no., i represents the imaginary unit 
# A complex number x can be represented as x+0i mathematically 
n = 5 # 5+oi 

# creating 
c = Complex(7, 3) # Kernel method Complex; 7+3i 
p c #(7+3i)

# literal constructor
c2 = 4+1i 
p c2 #(4+1i)

# 
c3 = Complex.polar(5, 6) 
p c3 #(5+6i)

c4 = Complex.rect (7) 
p c4 #(7+0i)

# you can also create complex numbers from strings and floating point 

c5 = Complex('1/2+1/2i')
p c5


c6 = Complex(4.5, 11.5)
p c6


c7 = 7.0.to_c # returns a complex number 
p c7

c8 = Complex(1, 1) / 2
p c8 

c9 = Complex(1, 1) / 2.0
p c9 

# instance methods 
# *, **, +, -, abs, abs2, rect, rectangular... 

# conversions 
# to_i, to_int if b=oi else return 'error' 
