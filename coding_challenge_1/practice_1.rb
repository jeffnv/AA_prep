def pow(base, exponent)
  result = 1
  
  if(exponent  > 0)
    while exponent > 0
      result *= base
      exponent -= 1
    end
  end
  
  result
end

def sum numbers
  result = 0
  
  numbers.each do |number|
    result += number
  end
 result
end


def is_prime? value
  result = true

  if value < 1
    return result
  end
  
  loopCount = value - 1
  
  #probably more efficient to start at the bottom
  while loopCount > 1
    if(value % loopCount == 0)
      result = false
      break
    end
    loopCount-=1
  end
  
  result
  
end

puts pow(2,3)
puts pow(4,2)
puts pow(10,10)

numbers = [21,15,9]
puts sum [21,15,9]
puts sum numbers

puts is_prime? 3

entry = 1

while entry != '0'
  entry = gets.chomp
  puts is_prime? entry.to_i
end