continurous_sccess_count = 0
input_count = 0
mismatch_count = 0
a_count = 0
d_count = 0

while true
  rundom = rand(1..2) == 1 ? "a" : "d"
  if rundom == "a"
    a_count += 1
  else
    d_count += 1
  end

  choice = gets.chomp
  input_count += 1

  if choice == "exit"
    puts "終了します"
    exit 0
  elsif choice != "a" && choice != "d"
    puts "aまたはdを入力してください"
    next
  end

  if choice == rundom
    continurous_sccess_count += 1
    puts "1/#{2**continurous_sccess_count}"
  else
    continurous_sccess_count = 0
    mismatch_count += 1
    puts "Restart"
  end

  if continurous_sccess_count == 13 # 2**13 = 8192
    break
  end
end

sleep 1
puts "Congratulations!"

sleep 1
puts "input_count: #{input_count}"

sleep 1
puts "mismatch_count: #{mismatch_count}"

sleep 1
puts "a_count: #{a_count}"

sleep 1
puts "d_count: #{d_count}"

sleep 2
puts "~ End ~"
