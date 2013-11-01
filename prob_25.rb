
f1 = 1
f2 = 1

i = 2
while f2.to_s.length < 1000
  temp = f1
  f1 = f2
  f2 = f1 + temp
  i += 1
end

puts i

