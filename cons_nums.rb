def check_consecutive array 
  l=array.length
  min=array.min
  max=array.max

  if l == (max-min)+1 
    visited=Array.new(l, 0) # visited.length == array.length  
    for i in 0..l 
      return 'consecutive' unless visited[array[i]+min]==0 
      visited[array[i]-min]=1
    end
    return 1 
  end
  return -1
end

array1 = [1, 2, 3, 4]
array2 = [23, 32, 45, 54] 

p check_consecutive array1 

p check_consecutive array2

def check_consecutive array 
  l=array.length 
  min=array.min
  max=array.max

  if l == (max-min)+1 
    for i in 0..l 
      j=array[i]+min
      if array[j]>0 
        array[j] -= array[j] 
        return'sequential order'
      else 
        return -1
      end
    end 
  end 
  return -1
end 

array1 = [1, 2, 3, 4]
array2 = [23, 32, 45, 54] 

p check_consecutive array1 

p check_consecutive array2