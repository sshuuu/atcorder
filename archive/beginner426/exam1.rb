VERSIONS = ["Ocelot", "Serval", "Lynx"]

versionX, versionY = gets.chomp.split

if VERSIONS.find_index(versionX) >= VERSIONS.find_index(versionY)
  puts "Yes"
else
  puts "No"
end
