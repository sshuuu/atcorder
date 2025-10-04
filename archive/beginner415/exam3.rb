testcase_num = gets.chomp.to_i
testcase_num.times do |testcase_idx|
    medicine_num = gets.chomp.to_i
    medicine_status = gets.chomp

    safe_statuses = Array.new(medicine_num+1) { Array.new }
    medicine_status.each_char.with_index do |bit, idx|
        state_num = idx + 1
        state_binary = "%0#{medicine_num}b" % state_num
        if bit == "0"
            safe_count = state_binary.count("1")
            safe_statuses[safe_count] << state_binary
        end
    end

    p safe_statuses

    medicine_num.times do |i|
        medicine_idx = i + 1

        is_possible = false
        safe_statuses[medicine_idx + 1].each do |state|
            prev_state = safe_statuses[medicine_idx]
            if prev_state ^ state = state
                is_possible + true
            end
        end
        unless is_possible
            
        end
    end
end
