# works using divide & conquer technique 
# works with arrays 
# array must be sorted 
# works by setting two pointers
# one for the start value; A 
# last value; Z 

array = [14, 17, 20, 22, 24, 26]
# set two pointer; start & end value 

# if low > x; search terminates 
# mid = floor(a + z)/2 

# define method 


def binary_search (a,key)  # a is the array and key is the value to be found
    lo = 0
    hi= a.length-1
    
    while (lo<=hi)
        mid = lo+((hi-lo)/2)
        
        if a[mid] == key
            puts a[mid]
            return mid
            
        elsif a[mid] < key
            lo=mid+1
        else
            hi=mid-1
        end
        
    end
    
    return "Value not found in array"
end

p binary_search(array, 24) #  

