vertex_num, side_num = gets.chomp.split(" ").map(&:to_i)
sides = Array.new(vertex_num+1) { Array.new(vertex_num+1, false) }
side_num.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  sides[a][b] = true
  # 無向グラフなので逆もtrueにしておく（必要ないかも）
  sides[b][a] = true
end

# 最大数を設定しておく
min_connected_num = side_num
combination_max_num = vertex_num / 2
1.upto(combination_max_num) do |i|
  # 頂点の組み合わせを全て列挙
  vertex_combination_left = (1..vertex_num).to_a.combination(i).to_a

  vertex_combination_left.each do |combination|
    vertex_combination_right = (1..vertex_num).to_a - combination
    # puts "vertex_combination_left: #{combination}"
    # puts "vertex_combination_right: #{vertex_combination_right}"
    connected_num = 0
    # left側の頂点同士が繋がっているかを確認
    combination.combination(2).each do |v1, v2|
      connected_num += 1 if sides[v1][v2]
    end

    # right側の頂点同士が繋がっているかを確認
    vertex_combination_right.combination(2).each do |v1, v2|
      connected_num += 1 if sides[v1][v2]
    end

    if connected_num < min_connected_num
      min_connected_num = connected_num
    end
  end
end

puts min_connected_num
