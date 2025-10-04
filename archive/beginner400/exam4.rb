height, width = gets.chomp.split.map(&:to_i)
map = []
height.times do
  map << gets.chomp.split("")
end

start_y, start_x, end_y, end_x = gets.chomp.split.map(&:to_i)
current_distance = 0
distance_map = []

while true do
  current_distance += 1
  # 上のマスの確認
  if (start_y - current_distance) >= 0 && map[start_y - current_distance][start_x] == "#"
    distance_map[start_y - current_distance][start_x] = current_distance  
    break
  elsif start_y - 1 == end_y && start_x == end_x
    # 上のマスがゴールの場合
    break
  else
    # 上のマスが空白の場合
    start_y -= 1
  end
  # 右のマスの確認
  # 下のマスの確認
  # 左のマスの確認
end