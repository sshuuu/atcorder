nkx = gets.chomp.split(" ")
a = gets.chomp.split(" ")

n = nkx[0].to_i
k = nkx[1].to_i
x = nkx[2].to_i

a.insert(k, x)
puts a.join(" ")
