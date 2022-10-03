# missing_num = range_sum - array_sum 
# array of size n, where all elements are unique 

def missing_num array 
  n=array.length+1 
  range_sum=(n * (n+1))/2 
  # array_sum=array.reduce(:+) 
  array_sum=0 
  for i in array 
    array_sum +=i 
  end 

  missing_num=range_sum-array_sum 
  puts missing_num
end 

array=[1, 2, 3, 4, 5, 7] 

missing_num array 
