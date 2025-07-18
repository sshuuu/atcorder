abcdef = gets.chomp.split(" ")
ghijkl = gets.chomp.split(" ")

a = abcdef[0].to_i
b = abcdef[1].to_i
c = abcdef[2].to_i
d = abcdef[3].to_i
e = abcdef[4].to_i
f = abcdef[5].to_i

g = ghijkl[0].to_i
h = ghijkl[1].to_i
i = ghijkl[2].to_i
j = ghijkl[3].to_i
k = ghijkl[4].to_i
l = ghijkl[5].to_i

# 1
if (d > g && g >= a) && (e > h && h >= b) && (f > i && i >= c)
  puts "Yes"
elsif (j > a && a >= g) && (k > b && b >= h) && (l > c && c >= i)
  puts "Yes"

# 2
elsif (j >= d && d > g) && (k > b && b >= h) && (l > c && c >= i)
  puts "Yes"
elsif (d >= j && j > a) && (e > h && h >= b) && (f > i && i >= c)
  puts "Yes"

# 3
elsif (j > a && a >= g) && (k >= e && e > h) && (l > c && c >= i)
  puts "Yes"
elsif (d > g && g >= a) && (e >= k && k > b) && (f > i && i >= c)
  puts "Yes"

# 4
elsif (j >= d && d > g) && (k >= e && e > h) && (l > c && c >= i)
  puts "Yes"
elsif (d >= j && j > a) && (e >= k && k > b) && (f > i && i >= c)
  puts "Yes"

# 5
elsif (j > a && a >= g) && (k > b && b >= h) && (l >= f && f > i)
  puts "Yes"
elsif (d > g && g >= a) && (e > h && h >= b) && (f >= l && l > c)
  puts "Yes"

# 6
elsif (j >= d && d > g) && (k > b && b >= h) && (l >= f && f > i)
  puts "Yes"
elsif (d >= j && j > a) && (e > h && h >= b) && (f >= l && l > c)
  puts "Yes"

# 7
elsif (j > a && a >= g) && (k >= e && e > h) && (l >= f && f > i)
  puts "Yes"
elsif (d > g && g >= a) && (e >= k && k > b) && (f >= l && l > c)
  puts "Yes"

# 8
elsif (g >= d && d > j) && (h >= e && e > k) && (i >= f && f > l)
  puts "Yes"
elsif (a >= j && j > d) && (b >= k && k > e) && (c >= l && l > f)
  puts "Yes"

else
  puts "No"
end
