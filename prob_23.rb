require_relative 'util'


abundant_numbers = []

(12..28123).each do |i|
  abundant_numbers << i if proper_divisors(i).inject(:+) > i
end

a = []
abundant_numbers.each do |i|
  abundant_numbers.each do |j|
    a << i + j if ( i + j) < 28123
  end
end

a.uniq!.sort!

sum = 0
i = 0
(1..28123).each do |n|
  if a[i] && a[i] > n
    sum += n
  else
    i += 1
  end
end
puts sum

