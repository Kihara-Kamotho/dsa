
class Z
	attr_accessor :bid
	def initialize voucher
		@v_id = voucher
	end
	def bid amount
		@amount = amount
	end
	def self.yk
		'..me dont trust people,
		me dont need unno'
	end
	def win_bid 
		# comparable
	end
end


z1 = Z.new 1

z1.bid 100

p z1

p Z.yk

z2 = Z.new 2 

z2.bid 200 

p z2 
