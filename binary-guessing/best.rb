floor = 1
ceiling = 26
my_number = nil
comp_guess = nil
count = 1

puts "CPU: Pick a number from 1 to 25.."
my_number = gets.chomp.to_i

puts "CPU: I will guess your number.."
comp_guess = rand(floor...ceiling)
puts "is it #{comp_guess}?"

until my_number == comp_guess do
  case gets.chomp.to_s
    when 'higher'
      floor = comp_guess
      comp_guess = rand(floor+1...ceiling)
      puts "is it #{comp_guess}?"
    when 'lower'
      ceiling = comp_guess
      comp_guess = rand(floor+1...ceiling)
      puts "is it #{comp_guess}?"
  end
  count += 1
end

puts "CPU: I guessed your number in #{count} tries!"