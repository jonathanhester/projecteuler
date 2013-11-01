def primes(n)
  (2..(Math.sqrt(n).floor)).inject([]){ |a, e| a << e if n % e == 0 && primes(e).empty?; a }
end
