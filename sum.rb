# 01/10/2015 - 2 exercises; accumulate and sum of multiples

# If we list all natural numbers below 10 that are multiples of 3 or 5, we get 3,5, and 9.  The sum of these multiples is 23

# allow the program to be configured to find the sum of multiples of numbers other than 3 and 5.
    # iterate from 1 to number
    # check if each number is divisible by MULTIPLES (3 or 5)
    # if it is then add to sum

class SumOfMultiples
  MULTIPLES = [3, 5]

  def self.to(number)
    new(*MULTIPLES).to(number)
  end

  attr_reader :multiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(number)
    sum = 0
    (1...number).each do |num|
      sum += num if any_multiple?(num)
    end
    sum
  end

  private

  def any_multiple?(number)
    multiples.any? { |multiple| number % multiple == 0 }
  end
end
