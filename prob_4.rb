def is_pal?(s)
  s.reverse == s
end

def palindrome(digits)
  highest = 1
  (1..(10 ** digits)).each do |i|
    (1..(10 ** digits)).each do |j|
      prod = i*j
      highest = prod if (prod > highest) && is_pal?(prod.to_s)
    end
  end
  highest
end

puts palindrome(3)