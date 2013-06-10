def bubble_sort(arr)
  
  sorted = arr.count < 2

  while !sorted do
    i = 0
    swapped = false
    
    while i < (arr.count - 1)
      if(arr[i] > arr[i + 1])
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
        swapped = true
      end
      i+= 1
    end  
    
    if(!swapped)
      sorted = true
    
    end
    
  end
  arr
end

p bubble_sort([1,4,2,3,5])