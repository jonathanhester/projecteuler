def divisors_of(num)
  (2..(num-1)).collect { |n| n if (num % n) == 0}.compact.concat([1])
end


nums = (1..10000).inject([]) do |a, i|
  sum = divisors_of(i).inject(:+)
  a << i if i != sum && divisors_of(sum).inject(:+) == i
  a
end
puts nums.inject(:+)