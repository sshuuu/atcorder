# skill_count = gets.chomp.to_i

# skill_acquisition_tree = Array.new(skill_count + 1) { [] }

# acquired_skills = []

# skill_count.times do |i|
#   skill_index = i + 1
#   pre_skill_index1, pre_skill_index2 = gets.chomp.split(" ").map(&:to_i)

#   if pre_skill_index1 == 0 && pre_skill_index2 == 0
#     acquired_skills << skill_index
#   else
#     skill_acquisition_tree[pre_skill_index1] << skill_index
#     skill_acquisition_tree[pre_skill_index2] << skill_index
#   end
# end

# # learning_process_queue = acquired_skills.dup
# # while !learning_process_queue.empty?
# #   current_skill = learning_process_queue.shift
# #   skill_acquisition_tree[current_skill].each do |dependent_skill|
# #     skill_acquisition_tree[dependent_skill].delete(current_skill)
# #     unless learning_process_queue.include?(dependent_skill)
# #       learning_process_queue << dependent_skill
# #     end
# #     acquired_skills << dependent_skill
# #   end
# # end


# def acquire_skill(pre_skill_index, skill_acquisition_tree, acquired_skills)
#   acquiring_skills = skill_acquisition_tree[pre_skill_index]  
#   # すでに習得しているスキルは除外
#   acquiring_skills = acquiring_skills - acquired_skills

#   acquiring_skills.each do |a_skill|
#         acquired_skills << a_skill

#     acquire_skill(a_skill, skill_acquisition_tree, acquired_skills)
#   end
# end

# acquired_skills.each do |skill|
#   acquire_skill(skill, skill_acquisition_tree, acquired_skills)
# end

# puts acquired_skills.uniq.count


require 'set'

skill_count = gets.to_i
skill_acquisition_tree = Array.new(skill_count + 1) { [] }
initial_skills = []

skill_count.times do |i|
  skill_index = i + 1
  pre_skill_index1, pre_skill_index2 = gets.split.map(&:to_i)
  if pre_skill_index1 == 0 && pre_skill_index2 == 0
    initial_skills << skill_index
  else
    skill_acquisition_tree[pre_skill_index1] << skill_index
    skill_acquisition_tree[pre_skill_index2] << skill_index
  end
end

acquired = Set.new(initial_skills)
queue = initial_skills.dup

while !queue.empty?
  current = queue.shift
  skill_acquisition_tree[current].each do |next_skill|
    unless acquired.include?(next_skill)
      acquired << next_skill
      queue << next_skill
    end
  end
end

puts acquired.size