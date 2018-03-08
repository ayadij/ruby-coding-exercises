string = "The quick brown fox jumps over the lazy dog"

def pig_latin_translator(str)
  arr = str.split
  destination = []
  length = arr.length
  i = 0
  length.times do
    vowel_spot = arr[i].to_s.index(/[aeiou]/)
    word_length = arr[i].to_s.length
    beginning = arr[i].to_s.slice(vowel_spot..word_length)
    new_end = arr[i].to_s.slice(0..(vowel_spot-1)) + "ay"
    destination << beginning + new_end
    
    i = i+1
  end
  p destination.join(" ")
end

pig_latin_translator(string)