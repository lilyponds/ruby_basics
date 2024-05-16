def substrings(phrase, dictionary)
input_phrase = phrase.split
    dictionary.reduce(Hash.new(0)) do |result, item|
        input_phrase.each do |word|    
            if word.downcase.include? (item)
                result.has_key? (item) ? result[item] += 1 : result[item] = 1
            end
        end
        result
    end
end