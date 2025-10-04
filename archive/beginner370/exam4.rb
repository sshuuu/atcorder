height, width, query_num = gets.split.map(&:to_i)

field = Array.new(height) { Array.new(width, 1) }
wall_num = height * width

query_num.times do
  pos_y, pos_x = gets.split.map(&:to_i)
  if field[pos_y-1][pos_x-1] == 1
    field[pos_y-1][pos_x-1] = 0
    wall_num -= 1
  else
    # 上下左右のマスを調べる
    # 上
    up_pos = pos_y - 1
    while true
      up_pos -= 1
      field[pos_y-1][pos_x-1] = 0
      wall_num -= 1
    end
    # 下
    # 左
    # 右
  end
end
