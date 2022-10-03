# find if difference of two numbers is equal to x 
def num_diff array, x 
  # x is the given diff 
  # array is a list of numbers 
  # first sort the array 
  array.sort! 
  # set two pointers; l&r 
  l=0 
  r=array.length-1 

  while l<r # length>0 
    diff=array[r]-array[l]
    # compare diff to x 
    if diff == x.abs
      return array[l], array[r] 
    elsif diff > x.abs 
      r -= 1 
    else 
      l += 1 
    end 
  return 'not in range'
  end
end

array=[2, 3, 5] 
x=2

p num_diff array, x