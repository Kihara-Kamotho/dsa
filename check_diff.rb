# Takes a pair of values return 1 if difference == x 
# array is unsorted 
# Begin by sorting the array 
# set two pointers; left&right

def check_pair array, x 
  array.sort! # destructive method 
  left=0 
  length=array.length 
  right=length-1

  while left<right # length>0  
    # remember we are comparing x to a value diff 
    #diff
    diff=array[right]-array[left] 
    # compare diff to param x 
    if diff == x.abs 
      # return the pair 
      return array[left], array[right] 
    elsif diff > x.abs 
      right -= 1 
    else 
      left += 1 
    end 
    p 'value out of range' 
  end
end 

array=[12, 34, 45, 67]
x=22

p check_pair array, x 

# Time-complexity: O(nlog n)
# space-complexity: O(1) ; diff, x 

