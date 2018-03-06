def hammingDifference(dna1, dna2)
 arr1 = dna1.split(//)
 arr2 = dna2.split(//)
 ans = []
 for i in 0..(arr1.length - 1 )
   k = arr1[i]
   j = arr2[i]
   if k != j
     ans << ” at index #{i}, #{j} and #{k} are different ”
   end
 end
 p ans
 p “there are #{ans.count} differences”
end

hammingDifference(“hello”, “h4lpo”)