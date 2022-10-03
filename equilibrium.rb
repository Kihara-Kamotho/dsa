# return index at which sum_left == sum_right 
# set two pointers
# rightsum=0 
# leftsum=0 

def equilibrium(array)
  leftsum=0
  rightsum=0
  
  for x in array
    # rightsum = rightsum + x 
    rightsum +=x # reduce; rightsum=max 
  end

  for i in 0..array.length 
    # rightsum = rightsum - array[i] 
    rightsum -=array[i] 
    if leftsum == rightsum 
      return i  
    end 
    leftsum +=array[i] 
  end 
  return -1 
end

array=[-7,1,5,2,-4,3,0] 

p equilibrium array 