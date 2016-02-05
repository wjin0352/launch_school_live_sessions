# 01/17/2015 - more on blocks and Enumerable

# 3.times do |n|
  # puts n
  # end

# def times(number)
#   (0...number).each do |element|
#     yield(element)
#   end
# end

def times(n)
  i = 0
  while i < n
    yield(i)
    i += 1
  end
end

times(3) do |n|
  puts n
end
