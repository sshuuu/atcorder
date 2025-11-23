h, w = gets.chomp.split(" ").map(&:to_i)
map = []

h.times do |i|
    map << gets.chomp
end



H, W = h, w
sy, sx = 0, 0
gy, gx = h-1, w-1

# スタート・ゴール位置を探索
map.each_with_index do |row, y|
  row.chars.each_with_index do |c, x|
    sy, sx = y, x if c == 'S'
    gy, gx = y, x if c == 'G'
  end
end

# [y, x, スイッチ偶奇] で訪問管理
visited = Array.new(H) { Array.new(W) { [false, false] } }
queue = []
queue << [sy, sx, 0, 0] # y, x, スイッチ偶奇, 手数
visited[sy][sx][0] = true

dy = [1, -1, 0, 0]
dx = [0, 0, 1, -1]

while !queue.empty?
  y, x, sw, step = queue.shift
  if y == gy && x == gx
    puts step
    exit
  end

  4.times do |d|
    ny, nx = y + dy[d], x + dx[d]
    next if ny < 0 || ny >= H || nx < 0 || nx >= W

    cell = map[ny][nx]
    nsw = sw

    # スイッチを踏んだら偶奇を反転
    if cell == '?'
      nsw ^= 1
    end

    # 現在の状態で通れるか判定
    case cell
    when '#'
      next
    when 'x'
      next if nsw == 0 # 偶数回なら閉じてる
    when 'o'
      next if nsw == 1 # 奇数回なら閉じてる
    end

    next if visited[ny][nx][nsw]
    visited[ny][nx][nsw] = true
    queue << [ny, nx, nsw, step + 1]
  end
end

puts -1 # 到達不可