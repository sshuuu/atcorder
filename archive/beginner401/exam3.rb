n, k = gets.split(" ").map(&:to_i)

array = Array.new(n+1, 1)

k.upto(n) do |i|
  sum = array[i-k..i-1].sum
  sum = sum % 1_000_000_000
  array[i] = sum
end

puts array.last
