def is_ordered? str
  vowels = str.split("").select{|char|char =~ /[aeiou]/}
  val = 'a'
  vowels.each do |v|
    if(v < val)
      return false
    else
      val = v
    end
  end
  return true
end

def ordered_vowel_words(str)
result = []
str.split(' ').each do |word|
  if(is_ordered? word)
      result << word
    end
  end
  result.join(' ')
end
