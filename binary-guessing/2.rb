equire_relative "get_input"
done = false
while !done
  puts "think of a number between 1 and 25 but don't tell me"

  def narrow possiblities, point, ans
    if ans == "h"
      @possiblities[:ceil] = point - 1
    else
      @possiblities[:floor] = point + 1
    end
  end

  @possiblities = {
    floor: 1,
    ceil: 25
  }

  won_game = false
  while !won_game
    current_guess = rand(@possiblities[:floor]..@possiblities[:ceil])
    ans = get_input "Is it #{current_guess}? y for yes, h for too high, l for too low: ", ["y","h","l"]
    if ans == "y"
      puts "wow i'm so smart."
      won_game = true
    else 
      narrow @possiblities, current_guess, ans
    end
  end
  again = get_input "play again? (y/n): ", ["y", "n"]
  done = true if again == "n"
end