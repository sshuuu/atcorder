str = gets.chomp

stack = []

str.each_char.with_index do |char, idx|
    if char == "#"
        stack << (idx+1).to_s
    end

    if stack.length == 2
        puts stack.join(",")
        stack.clear
    end
end

unless stack.empty?
    puts stack
end