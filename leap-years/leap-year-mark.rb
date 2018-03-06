def leap_year
  year = (1..2018).to_a
  
  year.each do |i|
    if i % 400 == 0
      puts "this is a leap Year"
    elsif i % 100 == 0
      puts i
    elsif i % 4 == 0
      puts "this is a leap Year"
    else
      puts i
    end
  end
end
leap_year