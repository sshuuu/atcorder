version_num, query_num = gets.chomp.split(" ").map(&:to_i)
versions = Array.new(version_num) { 1 }
minimum_version = 1

results = []
query_num.times do
  update_count = 0
  deprecated_version, update_version = gets.chomp.split(" ").map(&:to_i)
  minimum_version.upto(deprecated_version) do |i|
    versions[update_version - 1] += versions[i - 1]
    update_count += versions[i - 1]
  end

  minimum_version = [minimum_version, deprecated_version + 1].max
  results << update_count
end

puts results