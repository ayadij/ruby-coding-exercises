

# iterative
my_arr = [1,2,3,4,5,6]
def sum_array(arr)
  total_sum=0
  arr.each do |element|
    total_sum += element
  end
end
p sum_array(my_array)



# recrsive 
my_arr = [1,2,3,4,5,6]

def sum_arr_rec(arr)
  if arr.empty?
    0 
  else 
    head, *tail = arr
    binding.pry 
    head + sum_arr_rec(tail)
  end 
end
p sum_arr_rec(my_arr)


