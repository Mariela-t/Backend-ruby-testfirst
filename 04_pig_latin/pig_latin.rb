#write your code here
def translate(input)

    alphabet = ('a'..'z').to_a #.to_a creates an array (contains all lowercase letters)
    vowels = %w[a e i o u] 
    consonants = alphabet - vowels 

    input.downcase.split(' ').map do |words|
        if vowels.include?(words[0])
            words + 'ay'
        elsif words[0..1] == 'qu'
            words[2..-1] + words[0..1] + 'ay'
        elsif words[0..2] == 'squ'
            words[3..-1] + words[0..2] + 'ay'
        elsif consonants.include?(words[0]) && consonants.include?(words[1]) && consonants.include?(words[2])
             words[3..-1] + words[0..2] + 'ay'
        elsif consonants.include?(words[0]) && consonants.include?(words[1])
            words[2..-1] + words[0..1] + 'ay'
        elsif consonants.include?(words[0])
            words[1..-1] + words[0] + 'ay'

end
end.join(' ') #the words that are translated are joined together 
end


