# check for pair in array with sum x 
# x denotes the sum 
# array denotes the array 

def check_sum array, x 
  # sort the array 
  array.sort! 
  # set two pointers; l&r to compare with x 
  # reduce the array until lenght=0 
  l=0 
  r=array.length-1 
  while l<r 
    sum=array[l]+array[r] 
    if sum == x 
      return array[l], array[r] 
    elsif sum>x 
      r -= 1 
    else 
      l += 1 
    end 
  end 
end 

array=[2, 3, 4] 
x=6 

p check_sum array, x 
