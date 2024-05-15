def caesar_cipher (string, shift)
    cipher = []
    alphabet = ("a".."z").to_a
    to_cipher = string.split("")
    to_cipher.each_with_index do |item, index|
        if alphabet.include? (item.downcase)
            if item.upcase == item
                cipher[index] = alphabet[(alphabet.index(item.downcase)+shift)%26].upcase
            else
                cipher[index] = alphabet[(alphabet.index(item)+shift)%26]
            end
        else
            cipher[index] = item
        end
    end
    cipher.join("")
end