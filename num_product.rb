# return product of element in an array
def num_product array 
  l=array.length 
  product=Array.new(l, 1) 
  t=1 
  
  for i in 0..l 
    product[i]=t 
    t *= array[i]
  end
  # reset t 
  t=1 

  for i in (l-1).downto 0 
    product[i] *= t 
    t *= array[i]   
  end 
end