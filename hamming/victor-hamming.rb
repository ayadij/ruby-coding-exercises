  dna1 = "GAGCCTACTAACGGGAT"
  dna2 = "CATCGTAATGACGGCCT"

class Bio
  def converter dna1, dna2
    p arr = dna1.split(//)
    p arr2 = dna2.split(//)

    difference_counter = 0
    i = 0
    arr.each do |letter|
      if letter != arr2[i]
        difference_counter +=1
      end 
      i += 1 #same as i = i + 1
    end 
    p difference_counter
  end
end 
bio = Bio.new
bio.converter(dna1, dna2)