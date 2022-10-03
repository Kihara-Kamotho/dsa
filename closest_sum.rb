# given an array find a num pair that is a minimum of x and y 
# use two pointers to track the pair 

def closest_sum array, x 
  # sort the array 
  array.sort! 
  l=0 
  r=array.length-1 
  min_sum=1.0/0.0 

  while l<r # length>0 
    sum=array[l]+array[r] 
    sum_x=sum-x 
    if sum_x.abs < min_sum 
      min_sum = sum_x 
      l=l
      r=r 
    end 
    if sum_x<0
      l += 1 
    else 
      r -= 1 
    end
  end
  print "#{array[l]}, #{array[r]}" 
end

p closest_sum([1,3,2,4,5],9) # => The two elements whose sum is minimum are 4 and 5