i = gets.to_i
takahashi_count = 0
i.times do
  name = gets
  if name == "Takahashi\n"
    takahashi_count += 1
  end
end
puts takahashi_count
