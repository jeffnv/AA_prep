def nearest_larger(arr, idx)
  #want the index of the next larger item
  index = 0
  lcIdx = -1
  closestDistance = arr.count
  while index < arr.count
    #if its larger than the input
    if(arr[index] > arr[idx])
      #if its closer than the previously discovered value
      if(idx - index).abs < closestDistance
        #this is the new champ
        lcIdx = index
        closestDistance = (idx - index.abs).abs
      end
    end
    index +=1
  end
  
  if(lcIdx != -1)
    return lcIdx
  end
end