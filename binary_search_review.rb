# Binary search implements the divide & conquer technique 
# finds mid point and compares to the value being searched 
# goes either left or right of the mid point where the value is found 
def binary_search(array, x)
  # set two pointers; start & end 
  low = 0 
  high = array.length - 1 
  
  # x reps the value to be found 
  # low < high; meaning array has length > 1 
  while low < high 
    # find mid point to compare against X 
    mid = (low + high)/2 

    if  array[mid] == x 
      puts array[mid]
      return mid 
    elsif x > array[mid] 
      low = mid + 1 
    else 
      high = mid - 1 
    end 
  end
end

array = [14, 17, 20, 22, 24, 26]
x = 30

p binary_search(array, x)

# Time Complexity; O(n)
# Space Complexity;O(log n) 