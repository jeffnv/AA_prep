
def no_repeats? year
  ys = year.to_s
  uniqueCharacters = []
  ys.each_char do |char|
    if(uniqueCharacters.index char)
      return false
    else
      uniqueCharacters << char
    end
  end
  true
end

def no_repeats(year_start, year_end)
  count = year_end - year_start
  
  result = []
  if(no_repeats? year_start)
    result << year_start
  end
  
  count.times do
    
    year_start +=1
    
    if(no_repeats? year_start)
      result << year_start
    end
    
  end
  result
end
