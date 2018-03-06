floor = 0
ceiling = 26
my_number = nil
comp_guess = nil
# 8087251232


puts "CPU: Pick a number from 1 to 25"
my_number = gets.chomp.to_i

puts "CPU: I will guess your number:"
p comp_guess = rand(floor...ceiling)

count = 0
until my_number == comp_guess do
  case gets.chomp.to_s
    when 'higher'
      floor = comp_guess
      p comp_guess = rand(floor...ceiling)
    when 'lower'
      ceiling = comp_guess
      p comp_guess = rand(floor...ceiling)
    end
  count += 1
end

puts "Boom, you guessed my number! in #{count} tries"