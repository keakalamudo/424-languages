h = {hashes: "awesome", ruby: "rabbit", rails: "bunny"}
h.each do |key, val|
  if val == "rabbit"
    puts "#{key} => #{val}" # prints each key and value.
  end
end

h.each do |key, value|
  puts key
  value.each do |k,v|
    puts k
    puts v
  end
end