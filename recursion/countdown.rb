# iterative countdown
10.downto(1) do |number|
  p number
end

# recursive countdown
def recursive_countdown(attempt)
  return if attempt.zero?
  puts attempt
  recursive_countdown(attempt-1)
end
recursive_countdown(10)

