num_len, query_len = gets.chomp.split(" ").map(&:to_i)
a_nums = gets.chomp.split(" ").map(&:to_i)
b_nums = gets.chomp.split(" ").map(&:to_i)

# はじめにa_numsとb_numsのそれぞれの値を比較し、小さい値の合計を求める
init_sum = 0
a_nums.each_with_index do |a, i|
    init_sum += [a, b_nums[i]].min
end

result = []

sum = init_sum
query_len.times do
    q_type, change_i, after_value = gets.chomp.split(" ")
    change_i = change_i.to_i
    after_value = after_value.to_i

    prev_value = 0
    if q_type == "A"
        prev_value = a_nums[change_i - 1]
        a_nums[change_i - 1] = after_value

        b_value = b_nums[change_i - 1]
        # Aの変更前の値がBの変更前の値以下の場合
        if prev_value <= b_value
            # Aの変更後の値がBの変更前の値を上回った場合
            if after_value > b_value
                sum += (b_value - prev_value)
            else
                sum += (after_value - prev_value)
            end

        # Aの変更前の値がBの変更前の値より大きい場合
        else
            # Aの変更後の値がBの変更前の値を下回った場合
            if after_value < b_value
                sum -= (b_value - after_value)
            else
                # そのままBの値を維持
            end
        end
    else
        prev_value = b_nums[change_i - 1]
        b_nums[change_i - 1] = after_value

        a_value = a_nums[change_i - 1]
        # Bの変更前の値がAの変更前の値以下の場合
        if prev_value <= a_value
            # Bの変更後の値がAの変更前の値を上回った場合
            if after_value > a_value
                sum += (a_value - prev_value)
            else
                sum += (after_value - prev_value)
            end
        # Bの変更前の値がAの変更前の値より大きい場合
        else
            # Bの変更後の値がAの変更前の値を下回った場合
            if after_value < a_value
                sum -= (a_value - after_value)
            else
                # そのままAの値を維持
            end
        end
    end

    result << sum
end

puts result