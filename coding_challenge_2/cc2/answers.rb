def word_ordered?(str)
  #just in case
  str = str.downcase
  #start with 'a'
  current = 'a'
  str.each_char do |char|
    #if this letter is less than the previous highest, we are out of order
    if(char < current)
      return false
    else
      current = char
    end
  end
  #everything must have been ok
  true
end

def encode(str)
  result = []
  current = ''
  count = 1
  index = 0
  arr = str.split('')
  arr.count.times do
    char = arr[index]
    #if a new letter is found, restart at 1
    if(current != char)
      current = char
      result << [char, 1]
    else
      result[result.count - 1][1] = result[result.count - 1][1] + 1
    end
    
    index += 1
  end
  result
end

def one_letter_different?(word, str)
  index = 0
  differences = 0
  word.length.times do
    if(word[index] != str[index])
      differences += 1
      if(differences > 1)
        #no sense in continuing
        break
      end
    end
    index += 1
  end
  #one letter different?
  differences == 1
end

def nearby_words (str, words)
  #using only right length words
  rl_words = words.select{|word| word.length == str.length}
  result = []
  rl_words.each do |word|
    if(one_letter_different?(word, str))
      result << word
    end
  end
  result
end


def in_range?(num, range)
  num.between?(range[0], range[1])
end

def intersection(range1, range2) 
  min = range1[0] < range2[0] ? range1[0] : range2[0]
  max = range1[1] > range2[1] ? range1[1] : range2[1]
  
  index = min
  result = {:range1 => [], :both => [], :range2 => []}
  current = ""
  while index <= max do 
    if(in_range?(index, range1))
      if(in_range?(index, range2))
        #in both
        if(current != "both")
          current = "both"
          
        end
      else
        #only in range 1
        if(current != "one")
          current = "one"
          
        end
      end
    else
      if(in_range?(index, range2))
        #only in range 2
        if(current != "two")
          
        end
      end
    end
    index += 1
  end
  result
end
