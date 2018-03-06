# on every year that is evenly divisible by 4
#   except every year that is evenly divisible by 100
#     unless the year is also evenly divisible by 400
class Year
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def leap?
    divisible_by?(400) || divisible_by?(4) && !divisible_by?(100)
  end

  private

  def divisible_by?(i)
    number % i == 0
  end
end

class Fixnum
  def leap_year?
    Year.new(self).leap?
  end
end




