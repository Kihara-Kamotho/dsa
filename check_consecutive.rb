# array may be unsorted 
# checks whether two successive elements are consecutive 

def check_consecutive array 
  # uses two pointers; current_item & next_item
  length=array.length 
  max=array.max 
  min=array.min

  if length == (max-min)+1 
    for i in 0..length 
      j =(array[i])+ min # next 
      # new index value; j 
      if array[j] > 0 
        array[j] -= array[j]
      else 
        puts 'not in range'
      end 
    end
  end 
end 

array=[1, 2, 3, 4, 5, 6, 7, 8] 

p check_consecutive array 
