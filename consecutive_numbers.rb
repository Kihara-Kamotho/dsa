# given a unsorted array of numbers, return 1 for a sorted series of numbers and -1 for a un-consecutive series 
# Approach one: using an auxillary array to keep track of visited elements 
def check_consecutive(array)
  l = array.length
  min = array.min 
  max = array.max

  if l==(max-min+1)
    visited = Array.new(l, 0)
    for i in 0..l 
      return -1 unless visited[array[i]+min]==0 
      visited[array[i]-min]=1 
    end 
    return 1 
  end
  return -1
end

p check_consecutive([1, 2, 3]) 
p check_consecutive([3, 6, 8])

# Approach 2 
# checks if a[i]-min > 0 
# this forms the basis for our technique 
def check_consecutive(array) 
  l = array.length
  max = array.max
  min = array.min 

  if l==(max-min+1)
    for i in 0..l 
      j=(array[i])+min

      if array[j] > 0
        array[j] -= array[j] 
      else 
        return -1 
      end 
    end
  end 
end

p check_consecutive([2, 3, 4])
p check_consecutive([34, 54, 65]) 