# def word_unscrambler(str, words)
#   dic = Hash.new
#   words.each do |word|
#     dic[word] = word.split('').sort
#   end
#   result = []
#   dic.each do |word, sorted|
#     if str.split('').sort == sorted
#       result << word
#     end
#   end
#   result
# end


#their dumb solution
def word_unscrambler(str, words)
  str_letters = str.split("").sort

  anagrams = []
  words.select do |word|
    word_letters = word.split("").sort
    anagrams << word if str_letters == word_letters
  end

  anagrams
end