def sum_diff(n)
  (1..n).to_a.combination(2).inject(0){ |sum, (a,b)| sum += 2*a*b }
end

puts sum_diff(100)