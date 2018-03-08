

# get user input -------------------------------------------

puts "What would you like me to translate to Pig Latin?"
input = gets.chomp!.downcase.split(' ') # splits downcased string into an array of words


# main method -------------------------------------------

def get_pigged arr
  pig_latin = [] # instantiate an array for pig latin words

  arr.each do |letter| # loop thru each element/word in the array
    case letter[0] # beginning letter
    when 'a', 'e', 'i', 'o', 'u' # vowel
      pig_latin << pigged_vowel(letter) # append the pigged vowel to the back of the word
    else
      pig_latin << pigged_consonant(letter) # append the pigged consonant to the back of the word
    end
  end
  puts sentence = pig_latin.join(' ') # join the individual words as we go
end


# helper methods -------------------------------------------

def pigged_vowel word
  word << 'yay'
end

def pigged_consonant word
  chopped = word.slice!(1, word.length)
  word.insert(0, chopped)
  word << 'ay'
end


# method call -------------------------------------------

get_pigged(input)
