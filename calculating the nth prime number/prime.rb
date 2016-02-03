# write a program that tells you what the nth prime is.  By listing the 1st six prime numbers 2,3,5,7,11 and 13 we see that 6th prime is 13.
require 'prime'

class Prime
  def self.nth(target)
    # iterate from zero primes to target primes, along the way, keep track of all primes and return last prime in []
    raise ArgumentError if target <= 0

    number = 0
    primes = []

    # iterate from 1 to num, divide num by each iteration, count the factors, return false if factors > 2 else return true

    while primes.size < target
      primes << number if self.is_prime?(number)
      number += 1
    end
    # return last number in the list of primes
    primes.last
  end

  def is_prime?(num)
    # special cases
    return false if num < 2
    return true if num == 2
    return false if num.even?

    # definition of prime: only 2 factors: 1 and itself

    # used step instead of each to skip over 2 spaces(eveb numbers) so starting from 3, step through 2...so 3,5,7,9,11 etc
    (3..num-1).step(2) do |n|
      return false if num % n == 0
    end

    return true
  end
end
