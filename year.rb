# leap... write a program that takes a year and reports it if its a leap year

# tricky thing is that a leap year occurs:
# on every year that is evenly divisible by 4, except every year that is evenly divisible by 100 unless the year is also evenly divisible by 400

# for ex. 1997 isnt a leap year but 1996 is, 1900 is not but 2000 is.

# if your language provides a method in standard library pretend it doesnt exist and implement your own

class Year
  # def self.leap?(num)
  #   divisible_by_4 = num % 4 == 0
  #   divisible_by_100 = num % 100 == 0
  #   divisible_by_400 = num % 400 == 0

  #   if divisible_by_4
  #     is_leap = true
  #     if divisible_by_100
  #       is_leap = false
  #       if divisible_by_400
  #         is_leap = true
  #       end
  #     end
  #   end

  #   is_leap
  # end

  # more clever way
  def self.leap?(num)
    divisible_by_4 = num % 4 == 0
    divisible_by_100 = num % 100 == 0
    divisible_by_400 = num % 400 == 0

    divisible_by_4 && (divisible_by_400 || divisible_by_100)

  end
end


