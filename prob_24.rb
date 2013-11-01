require_relative 'util'

#runs a little slow doing them all, so 9! = 362880 means it'll be the
#1,000,000 - 2 * 362880 = 274240th permutation with 2 as the first digit

a = [ 0, 1, 3, 4, 5, 6, 7, 8, 9]

perms = a.permutation.map {|e| e.join("")}

puts "2" + perms.sort[274_240-1]