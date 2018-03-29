p string = "A quick brown fox jumped over the lazy dog."

def replace(string)
  p string
  p string.split(//).map{|l| l.gsub(/[aeiouAEIOU]/),"*"}.join
end

p replace(string)
