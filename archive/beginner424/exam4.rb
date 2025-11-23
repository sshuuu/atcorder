rt, ct, ra, ca = gets.chomp.split(" ").map(&:to_i)
n, m, l = gets.chomp.split(" ").map(&:to_i)

t_moves = []
m.times do
  t_moves << gets.chomp.split(" ")
end

a_moves = []
l.times do
  a_moves << gets.chomp.split(" ")
end

result = 0

while true
  if t_moves[0][1] <= a_moves[0][1]
    t_move = t_moves.shift
    t_direction, t_distance = t_move

    t_pre_pos = [rt, ct]

    case t_direction
    when "U"
      rt -= t_distance.to_i
    when "D"
      rt += t_distance.to_i
    when "L"
      ct -= t_distance.to_i
    when "R"
      ct += t_distance.to_i
    end

    t_post_pos = [rt, ct]

    # tで移動した分aも移動する
    a_moves[0][1] -= t_move[1].to_i
    a_direction = a_moves[0][0]
    a_distance = t_distance
    # 同値だった場合削除
    if a_moves[0][1] == 0
      a_moves.shift
    end

    a_pre_pos = [ra, ca]

    case a_direction
    when "U"
      ra -= a_distance.to_i
    when "D"
      ra += a_distance.to_i
    when "L"
      ca -= a_distance.to_i
    when "R"
      ca += a_distance.to_i
    end

    a_post_pos = [ra, ca]

    # tとaの交わった距離を計算
    if t_direction == a_direction
      if t_pre_pos == a_pre_pos
        result += t_distance.to_i
      end
    elsif (t_direction == "U" || t_direction == "D") && (a_direction == "U" || a_direction == "D")
      if t_post_pos == a_post_pos
        result += [t_distance.to_i, a_distance.to_i].min
      end
    end

  else
    a_move = a_moves.shift
    a_direction, a_distance = a_move

    a_pre_pos = [ra, ca]

    case a_direction
    when "U"
      ra -= a_distance.to_i
    when "D"
      ra += a_distance.to_i
    when "L"
      ca -= a_distance.to_i
    when "R"
      ca += a_distance.to_i
    end

    a_post_pos = [ra, ca]
  end
end

# t_moves.each do |t_direction, t_distance|
#   t_pre_pos = [rt, ct]
#   a_pre_pos = [ra, ca]

#   case t_direction
#   when "U"
#     rt -= t_distance.to_i
#   when "D"
#     rt += t_distance.to_i
#   when "L"
#     ct -= t_distance.to_i
#   when "R"
#     ct += t_distance.to_i
#   end


# end
