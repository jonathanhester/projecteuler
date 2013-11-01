n = 1
e = 1000

e.times { n *= 2 }

puts n.to_s.chars.inject(0) { |s, e| s += e.to_i }