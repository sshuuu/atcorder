value_num, section_threshold = gets.chomp.split(" ").map(&:to_i)

sections = []
value_num.times do
  section = gets.chomp.split(" ").map(&:to_i)
  sections << section
end

sections.sort_by!{ |section| -section[0] }

p sections
