def is_prime?(n, history)
  history.each do |e|
    if n % e == 0
      return false
    end
    if e > Math.sqrt(n)
      return true
    end
  end
  return true
end

i = 3
sum = 2
primes = [2]
while i < 2000000 do
  if is_prime?(i, primes)
    sum += i
    primes << i
  end
  i += 1
  puts i if i % 100000 == 0
end

puts sum