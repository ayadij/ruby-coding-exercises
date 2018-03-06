
system("clear")
puts "Think of a number between 1 and 25..."
sleep(2)

my_arr = [*1..25]


correct = "N"

until correct == "Y" do
  guess = my_arr.sample
  puts "Is your number #{guess}? (Y/N)"
  correct = gets.chomp!.upcase

  if correct == "Y"
    puts "NAILED IT!"
  else
    puts "Is it higher or lower than #{guess}? (H/L)"
    hint = gets.chomp!.upcase
    
    if hint == "H"
      my_arr.delete_if {|x| x <= guess}
    else
      my_arr.delete_if {|x| x >= guess}
    end
  end
end
