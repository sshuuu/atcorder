person_num, question_num, event_num = gets.chomp.split(" ").map(&:to_i)

answer_counts = Array.new(person_num, 0)
all_answer_persons = []
event_num.times do
    p, _q = gets.chomp.split(" ").map(&:to_i)
    answer_counts[p - 1] += 1

    if answer_counts[p - 1] == question_num
        all_answer_persons << p
    end
end

puts all_answer_persons.join(" ")
