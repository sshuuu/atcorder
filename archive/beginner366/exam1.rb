all_vote_count, takahashi_count, aoki_count = gets.split.map(&:to_i)

rest_vote_count = all_vote_count - (takahashi_count + aoki_count)
diff = (takahashi_count - aoki_count).abs

# 勝敗は決定している
if diff - rest_vote_count > 0
  puts 'Yes'
else
  puts 'No'
end
