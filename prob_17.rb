@words = {
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety',
    100 => 'hundred',
}

def number(n)
  s = ""
  if n > 99
    s += "#{@words[n / 100]} hundred"
    n %= 100
    s += " and " if n > 0
  end
  if n > 19
    s += "#{@words[n - n % 10]}"
    n %= 10
    s += "-" if n > 0
  end
  s += "#{@words[n]}"
  s
end

s = ""
(1..999).each do |n|
  s += number(n) + "\n"
end
s += "one thousand"

puts "count #{s.gsub(/\s/, "").gsub("-", "").length}"



puts number(8)
puts number(17)
puts number(28)
puts number(342)