

def is_leap_year(year):
    divisible_by_4 = year % 4 == 0
    divisible_by_100 = year % 100 == 0
    divisible_by_400 = year % 400 == 0

    return divisible_by_4 && ((divisible_by_100 && divisible_by_400)
                                ||
          !(divisible_by_100 || divisible_by_400))
end
