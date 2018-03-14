
puts "SPACE AGE ---- \n  Earth \n  Mercury \n  Venus \n  Mars \n  Jupiter \n  Saturn \n  Uranus \n  Neptune"
puts "Let's find out your space age... How many years old are you?"
earth_age = gets.chomp.to_f
age_in_seconds = earth_age * 31557600
puts "Cool.. and what planet?"
planet = gets.chomp.to_s.downcase

def earth_years(s)
  years = s / 31557600
  years.to_f
end



def any_planet(planet, s)
  planet_hash = {
      :earth => earth_years(s),
      :mercury => earth_years(s) * 0.2408467,
      :venus => earth_years(s) * 0.61519726,
      :mars => earth_years(s) * 1.8808158,
      :jupiter => earth_years(s) * 11.862615,
      :saturn => earth_years(s) * 29.447498,
      :uranus => earth_years(s) * 84.016846,
      :neptune => earth_years(s) * 164.79132
  }
  "Your age in #{planet.capitalize} years: #{planet_hash[planet.to_sym]}\n\n"
end

puts any_planet(planet, age_in_seconds)

