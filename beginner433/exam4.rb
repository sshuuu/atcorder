# ランダムな20万個の数字の配列を受け取り、ソートする

random_numbers = Array.new(200_000) { rand(1..100_000) }
sorted_numbers = random_numbers.sort

before_num = random_numbers[0]
sorted_numbers.each do |num|
  if before_num == num
    before_num = num
  end
end