# 01/17/2015 - more on blocks and Enumerable

def time_it
  start_time = Time.now
  result = yield(1)
  puts result
  end_time = Time.now
  diff = end_time - start_time
  puts "That took #{diff} seconds."
end

time_it do |secs|
  sleep(secs)
  "slept for #{secs} seconds"
end

