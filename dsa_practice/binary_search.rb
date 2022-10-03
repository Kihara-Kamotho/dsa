# works on an array
# sets two pointers; a, b. a at 0 and b at -1
# finds mid point
# evaluates mid-point to x
# if x < mid-point, go right
# else , go left

# note, find floor of mid-point


def binary_search array, x
  # set two pointers; start and end
  low=0
  high=array.length-1

  while low < high # length > 0
    mid=(high+low)/2
    if array[mid] == x
      puts array[mid]
      return mid
    elsif x > array[mid]
      low = mid - 1
    else
      high = mid + 1
    end
    puts 'value not in range'
  end
end

array=[14, 17, 20, 22, 24, 26]


p binary_search array, 24
