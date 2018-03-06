def hamming str1, str2
  return nil if str1.length != str2.length
  diffs = {}
  str1.length.times { |i| diffs[i] = [str1[i], str2[i]] if str1[i] != str2[i] }
  diffs
end

str1 = "GATCTCTATCTATCTTA"
str2 = "CATGCGCATCGAACTTA"

p (hamming str1, str2).count