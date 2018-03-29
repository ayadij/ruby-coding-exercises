# make a method that will take in a string and parse through each letter, replacing vowels (aeiou) with an asterisk (*), and then return that string.

def vowelsout str
  p str.gsub(/([aeiou])/, '*')
end

str = "Hello World!"
vowelsout(str)

