def primes(n)
  (2..(Math.sqrt(n).floor)).inject([]){ |a, e| a << e if n % e == 0 && primes(e).empty?; a }
end

def prime_i(i)
  a = []
  j = 2
  memo = {}
  while a.count < i
    memo[j] ||= primes(j)
    a << j if memo[j].empty?
    j += 1
  end
  a.last
end

puts prime_i(4001)