# 01/10/2015 - 2 exercises; accumulate and sum of multiples

# Given a collectin of numbers:
# 1 2 3 4 5 and the operation : - square a number
# your code should be able to produce the collection of squares: - 1, 4, 9, 16, 25

## restrictions
# keep your hands off that collection/map/fmap/functionality provided by standard library.  solve using other basic tools instead.  its fine to use 'Enum.reduce or Enumerable.reduce'

class Array

  def accumulate
    result = []
    each do |element|
      result << yield(element)
    end
    result
  end
end
