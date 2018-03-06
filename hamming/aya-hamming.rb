class Hamming

  def self.compute(s1, s2)
    
    if s1.size != s2.size
      puts "Error. Strands are not the same length"
    end

    hamming_distance = 0
    s1.chars.each_index do |i| 
      hamming_distance += 1 if s1[i] != s2[i]
    end
    p hamming_distance

  end

  dna1 = "GAGCCTACTAACGGGAT"
  dna2 = "CATCGTAATGACGGCCT"

  compute(dna1,dna2)

end


