require  'bigdecimal'

string = gets.chomp

# 充填率
filling_rate = 0

# 「t」が三文字以上含まれるかどうかをチェック
if string.count('t') < 3
    filling_rate = 0
    puts filling_rate
    exit
end

# 「t」が三文字連続して含まれるかどうかをチェック
if string.count('t') >= 3 && string.include?('ttt')
    filling_rate = 1
    puts filling_rate
    exit
end



# 正規表現で「t」と「t」の間にある文字列を抽出。間の文字数は1から98までなのでループで対応する。
(1..98).each do |i|
    if string =~ /t(.{#{i}})t/
        # iに含まれる「t」の数をカウント
        count_t = $1.scan(/t/).count
        # 充填率を計算
        # tmp_rate = count_t / i.to_f
        tmp_rate = BigDecimal(count_t.to_s) / BigDecimal(i.to_s)
        if tmp_rate > filling_rate
            filling_rate = tmp_rate
        end
    end

    if string =~ /t(.{#{i}})tt/
        # iに含まれる「t」の数をカウント
        count_t = $1.scan(/t/).count
        # 充填率を計算
        # tmp_rate = (count_t + 1) / (i + 1).to_f
        tmp_rate = BigDecimal((count_t + 1).to_s) / BigDecimal((i + 1).to_s)
        if tmp_rate > filling_rate
            filling_rate = tmp_rate
        end
    end

    if string =~ /tt(.{#{i}})t/
        # iに含まれる「t」の数をカウント
        count_t = $1.scan(/t/).count
        # 充填率を計算
        # tmp_rate = (count_t + 1) / (i + 1).to_f
        tmp_rate = BigDecimal((count_t + 1).to_s) / BigDecimal((i + 1).to_s)
        if tmp_rate > filling_rate
            filling_rate = tmp_rate
        end
    end

    if string =~ /tt(.{#{i}})tt/
        # iに含まれる「t」の数をカウント
        count_t = $1.scan(/t/).count
        # 充填率を計算
        # tmp_rate = (count_t + 2) / (i + 2).to_f
        tmp_rate = BigDecimal((count_t + 2).to_s) / BigDecimal((i + 2).to_s)
        if tmp_rate > filling_rate
            filling_rate = tmp_rate
        end
    end
end

# tt.ttのパターンがあるかどうかをチェック
# if string.include?('tt.tt')
#     # tt.ttのパターンがある場合、充填率は4/5
#     filling_rate = 4/5.to_f
#     # puts filling_rate
# end

# stack = []
# while string.include?('t')
#     c = string.slice!(0)
#     if c == 't'
#         stack.push(c)
#     elsif stack[-2..-1] == ['t', 't']
#         stack.push(c)
#     else
#         if stack[-1] != 't'
#             stack.pop
#         end
#         if stack.length >= 4
#             # 充填率を計算
#             filling_rate = [filling_rate, (stack.count('t') - 2) / (stack.size - 2).to_f].max
#         end
#         stack.clear
#     end
# end

# if stack.length >= 4
#     puts "Stack: #{stack.inspect}"
#     puts "stack filling rate: #{(stack.count('t') - 2) / (stack.size - 2).to_f}"
#     puts "Stack size: #{stack.size}"
#     puts "Stack count: #{stack.count('t')}"

#     # 充填率を計算
#     filling_rate = [filling_rate, (stack.count('t') - 2) / (stack.size - 2).to_f].max
# end

puts filling_rate.round(17).to_s('F')
