def block_swap(a,d)
    n=a.length
  if n>0
    
      if d>=n
        d%=n
      end
    
      if d==0
          return a
      end

      if d==n-d
          swap(a,0,d,d)
      end

      i= d
      j= n-d

      while(i!=j)
          if i<j
              swap(a,d-i,d+j-i,i)
              j-=i
          else
              swap(a,d-i,d,j)
              i-=j
          end
      end
    
    swap(a,d-i,d,i)
  end
  
    return a
  
end
    

def swap(a,start1,start2,d)
    if (start1 != start2)
        for i in 0...d
            temp = a[start1+i]
            a[start1+i] = a[start2+i]
            a[start2+i] = temp
        end
    end
end

p block_swap([1,2,3,4,5,6,7,8,9],5)
