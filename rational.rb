# Rational < Numeric 
# a/b & a>0 

p 10.times.inject(0) {|i| i+0.1}

p 10.times.inject(0) {|i| i+Rational('0.1')}

p Rational(10/3)

p Rational(10) / 3 

p Rational(10) / 3.0
