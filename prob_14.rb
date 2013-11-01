def seq(x)
  if x % 2 == 0
    x / 2
  else
    3 * x + 1
  end
end

memo = {}
max = [1,1]
(1..1_000_000).each do |i|
  puts i if i % 1000 == 0
  count = 1
  n = i
  while n != 1
    if memo[n]
      count += memo[n] - 1
      n = 1
    else
      n = seq(n)
      count += 1
    end
  end
  memo[i] = count
  max = [count, i] if count > max.first
end

puts max