
def palindrome?(string)
  alteredString1 = string.downcase.gsub(/[^a-z ]/, '') #removing punctuation 
  alteredString2 = alteredString1.gsub(/\s/, '') # removing whitespace (two separate statements for own personal clarity)
  return alteredString2 == alteredString2.reverse ? true : false 
end
puts palindrome?("A man, a plan, a canal -- Panama")
puts palindrome?("In fact, not a palindrome")

def count_words(string)
  splitString = string.split(/\W+/)
  hash = splitString.uniq.map { |word| [word, splitString.count(word)] }.to_h
  puts hash
end

count_words('I live in California in the Bay Area')


