def get_rounded_num_as_s(num)
  result = ''
  
  return 
end

def sci_not(num)
  result = ""
  mag = num.to_s.length
  
  if(mag < 3)
    result = num.to_s
    (3 - mag).times do
      result += "0"
    end
  else
    temp = num.to_f
    (mag - 3).times do
      temp /= 10
    end
    result = temp.round.to_s
  end
  
  result.insert(1, '.') + 'E' + (mag - 1).to_s
  

end

