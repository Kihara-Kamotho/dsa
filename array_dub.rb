# return array duplicates 
# takes an array 

def array_duplicates a 
  n=a.length  
  for i in 0...n 
    if a[a[i].abs]<0 
      print "#{a[i].abs}" 
    else 
      a[a[i].abs] =- a[a[i].abs] 
    end 
  end
end  

 
array=[1, 4, 6, 4, 3, 6, 1]
 
# print executes in the method call 
array_duplicates array 