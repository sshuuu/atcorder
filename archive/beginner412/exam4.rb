vertex_num, edge_num = gets.chomp.split(" ").map(&:to_i)

concatenations = Array.new(vertex_num+1) { [] }

edge_num.times do
  vertex1, vertex2 = gets.chomp.split(" ").map(&:to_i)
  concatenations[vertex1] << vertex2
  concatenations[vertex2] << vertex1
end

operation_count = 0

# 頂点の連結数を確認し、連結数が3以上の頂点を削除する
concatenations.each_with_index do |vertexs, i|
  # Skip the first element (0th index)
  next if i == 0
  delete_vertex1 = i
  
  # 連結数が3以上の頂点を持つ場合は、連結数が2以下になるまで削除する
  while vertexs.length >= 3
    # 連結数が最も多い頂点を削除する
    # concatenationsの中で、要素数が一番多い頂点を削除する
    delete_vertex2 = vertexs.sort_by! { |v| -concatenations[v].length }.first
    concatenations[delete_vertex1].delete(delete_vertex2)
    concatenations[delete_vertex2].delete(delete_vertex1)
    operation_count += 1
  end
end

concatenations.each_with_index do |vertexs, i|
  # Skip the first element (0th index)
  next if i == 0
  target_vertex1 = i
  
  if vertexs.length == 2
    # 閉鎖機な連結を解除する
    while true
      concatenations[target_vertex1]
    end
  end
end

# 次数が1以下のところと、次いで次数が少ないところを連結する
concatenations.each_with_index do |vertexs, i|
  # Skip the first element (0th index)
  next if i == 0
  add_vertex1 = i
  puts "Checking vertex #{delete_vertex1} with connections: #{vertexs}"
  
  # 次数が1以下の場合、追加する
  while vertexs.length <= 1
    concatenations
    concatenations[delete_vertex1].delete(delete_vertex2)
    concatenations[delete_vertex2].delete(delete_vertex1)
    operation_count += 1
  end
end