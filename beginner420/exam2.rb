person_num, vote_num = gets.chomp.split(" ").map(&:to_i)

# 二重配列
person_votes = Array.new(person_num) { Array.new(vote_num, "") }
person_num.times do |i|
    person_votes[i] = gets.chomp.split("")
end

vote_persons = person_votes.transpose

person_points = Array.new(person_num, 0)

# vote_personsの0番目の要素のvotesは、各メンバーの一つ目の投票を表す
vote_persons.each_with_index do |votes|
    win_bote_num = ""

    # 投票の少ない方の勝ち、奇数人数なので同数はありえない
    if votes.count("0") < votes.count("1")
        win_bote_num = "0"
    else
        win_bote_num = "1"
    end

    votes.each.with_index do |vote, member_i|
        if vote == win_bote_num
            person_points[member_i] += 1
        end
    end
end

max_point = person_points.max

puts person_points.each_with_index.select { |p, i| p == max_point }.map { |p, i| i + 1 }.join(" ")