require 'prime'

def prime_factors(n)
  Hash[n.prime_division]
end

def even_div(range)
  factors = []
  range.each{ |e| factors << prime_factors(e) }
  counts = Hash.new(0)
  factors.each do |h|
    h.each{ |k,v| counts[k] = [v, counts[k]].max }
  end
  counts.inject(1){ |prod, (k,v)| prod *= k ** v }
end

def even_div2(range)
  i = 1
  while true do
    break if range.map{ |e| i % e }.select{|e| e != 0}.empty?
    i += 1
  end
  i
end

puts even_div(1..20)