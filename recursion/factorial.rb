# iterative 
def factorial_iterative number
  if number == 0 || number == 1 
    1
  else
    product = 1 
    number.times do |n|
      product *= (n + 1) 
    end
    puts product 
  end
end
factorial_iterative(5)



# recursive
def factorial_recursive(num)
  if num == 0 || num == 1 
    1
  else
    puts num * factorial_recursive(num-1)
  end
end
