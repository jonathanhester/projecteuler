require_relative 'util'

i = 1
max_sum = 1
while true
  i += 1
  sum = (1..(i)).reduce(:+)
  max_sum = [max_sum, factors_of(sum).count].max
  puts max_sum
  break if factors_of(sum).count > 500
end
p i