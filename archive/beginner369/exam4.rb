node_len, remain_node_len = gets.split.map(&:to_i)
nodes = Array.new(node_len+1) { Array.new}

(node_len-1).times do
  node1, node2 = gets.split.map(&:to_i)
  if node1 > node2
    nodes[node1].push(node2)
  else
    nodes[node2].push(node1)
  end
end

remain_nodes = gets.split.map(&:to_i)
remain_nodes.sort!

result_remain_node_num = 0

tmp_remain_nodes = []
remain_nodes.each do |remain_node|
  result_remain_node_num += 1

  

  tmp_remain_nodes.push(remain_node)
end
