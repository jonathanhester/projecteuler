month_days_non_leap = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
month_days_leap = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

offsets_non_leap = month_days_non_leap.inject([0]) { |a, e| a << a.last + e }
offsets_leap = month_days_leap.inject([0]) { |a, e| a << a.last + e }

def days_on_first(start_day, offsets)
  a = []
  offsets.each do |e|
    a << ((e + start_day) % 7)
  end
  a.pop
  a.inject(Hash.new(0)) { |h, e| h[e] += 1 ; h }
end

offset = 2
sum = 0

(1901..2000).each do |y|
  offsets = y % 4 == 0 ? offsets_leap : offsets_non_leap
  sum += days_on_first(offset % 7, offsets)[0]
  offset += offsets.last
end

puts sum