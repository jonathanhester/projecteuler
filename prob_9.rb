(1..1000).each do |i|
  (1..1000).each do |j|
    x = 1000 - i - j
    puts x * i * j if x * x == (i * i + j * j)
  end
end
