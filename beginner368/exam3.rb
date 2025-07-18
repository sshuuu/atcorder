enemy_count = gets.to_i
enemy_healths = gets.split.map(&:to_i)

total_attack_count = 0

# 前回の敵への攻撃回数に対する補正値
pre_attack_fix_value = 0

enemy_healths.each do |enemy_health|
  fix_attack_count = 0
  
  # 攻撃回数補正値の処理
  if pre_attack_fix_value == 1
    fix_attack_count += 1
    enemy_health -= 1
    pre_attack_fix_value = 2
    # 補正値処理で敵を倒した場合
    if enemy_health <= 0
      total_attack_count += fix_attack_count
      next
    end
  end

  if pre_attack_fix_value == 2
    fix_attack_count += 1
    enemy_health -= 3
    pre_attack_fix_value = 0
    # 補正値処理で敵を倒した場合
    if enemy_health <= 0
      total_attack_count += fix_attack_count
      next
    end
  end

  attack_count = (enemy_health / 5) * 3
  attack_count_fraction = (enemy_health % 5)
  if attack_count_fraction == 4
    attack_count_fraction = 3
  end

  # 攻撃回数を３で割って余りが１か２の場合、前回の敵への攻撃回数に対する補正値を設定
  if attack_count_fraction == 1 || attack_count_fraction == 2
    pre_attack_fix_value = attack_count_fraction
  end

  attack_count += attack_count_fraction + fix_attack_count
  total_attack_count += attack_count
end

puts total_attack_count

