  @str_one = "GAGCCTACTAACGGGAT"
  @str_two = "CATCGTAATGACGGCCT"
  @total = 0
def calculator
  @str_one.length.times do |pos|
    if @str_one[pos] == @str_two[pos]
      p @str_one.length
    else
      @total = @total + 1
    end
  end
end