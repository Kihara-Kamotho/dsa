class X 
	#random value btwn 1 - 30; score
	def score 
		rand(11..30)
	end
end

x1 = X.new 
x1_score = x1.score

x2 = X.new 
x2_score = x2.score 

x3 = X.new
x3_score = x3.score

# mean = sum/n

x1_mean = x1_score + x2_score + x3_score / 3

p x1_mean 
