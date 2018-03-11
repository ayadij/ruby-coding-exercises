arr = Array.new
p arr.class

arr = []
p arr.class

# array size 3
arr = Array.new(3)
p arr

# array size 3 filled with true
arr = Array.new(3,true)
p arr

# array of hashes
arr = Array.new(4) { Hash.new }
p arr

#multli-dimensional array
empty_table = Array.new(3) { Array.new(3) }
p empty_table

# elements in an array can be retrieved using the #[] method. 
# it can take int, pair of arguments, or range

#accessing elements within collection
arr = [1, 2, 3, 4, 5, 6]
p arr[2] #3
p arr[-3] #4
p arr[2,3] #[3,4,5]
p arr[1..4] #[2,3,4,5]
p arr[1..-3] #[2,3,4]

# shovel method or shovel operator
arr = [1, 2, 3]
arr << 4
empty_arr = []
p empty_arr << "Append"


#grab all the numbers less than 4 from the array
@arr = [1,2,3,4,5,6,7,8,9,10]
def array_copy(source)
  newarr =[]
  for num in source
    newarr << num if num < 4
  end
  return newarr
end

p array_copy(@arr) # [1,2,3]

#map stores the restult
p [1,2,3,4,5].map{ |i| i + 1} 
p [1,2,3,4,5].map{ |x| x * 3} 

# select takes the evaluation of T/F to keep/dump
p [1,2,3,4,5].select{ |num| num%2 == 0} 
p [1,2,3,4,5].select{ |num| num.even? } 




