asdf = "The quick brown fox jumps over the lazy dog"

def pig_translator(asdf)
asdf.split(/ /).map!{|word| word.partition(/[aeiou]/i).rotate.push("ay").join()}.join(" ")
end

p pig_translator asdf