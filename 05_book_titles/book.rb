class Book
# write your code here
attr_reader :title

def initialize(title = '')
    @title = title
end

def title=(new_title) #no space in the equal sign 
    no_capitalization = %w[a an and the in of]
    @title = new_title.capitalize.split(" ").map do |word|
        no_capitalization.include?(word) ? word : word.capitalize #checks if word is in the no_capitalization array if it isn't it is capitalized
    end.join(" ")
end

end
