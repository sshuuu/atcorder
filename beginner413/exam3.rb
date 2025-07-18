query_num = gets.chomp.to_i
A = []

puts_results = []

query_num.times do
  query = gets.chomp.split.map(&:to_i)

  if query[0] == 1
    add_len = query[1]
    num = query[2]
    A << [add_len, num]
  elsif query[0] == 2
    release_len = query[1]
    result = 0

    while release_len > 0
      if A[0][0] <= release_len
        release_len -= A[0][0]
        result += (A[0][1] * A[0][0])
        A.shift
      else
        A[0][0] -= release_len
        result += (A[0][1] * release_len)
        release_len = 0
      end
    end

    puts_results << result
  end
end

puts puts_results
