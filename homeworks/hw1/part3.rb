def combine_anagrams(words)
arrayToReturn=[]
tempArray = []
 words.each do |word1|
     anagramArray=[]
     words.each do |word2|
    if (word2.downcase.split(//).sort.join('') == word1.downcase.split(//).sort.join(''))
    anagramArray.push(word2)
    end
    
end
arrayToReturn.push(anagramArray)

end
p arrayToReturn
end

combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'])
combine_anagrams(['ada', 'dad'])