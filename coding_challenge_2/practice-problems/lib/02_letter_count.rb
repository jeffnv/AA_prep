def letter_count(str)
  
  result = Hash.new(0)
  str.each_char do |char|
    if(char != ' ')
      result[char] = result[char] + 1
    end
  end
  
  result
end