=begin
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
=end


presidentialList = Hash.new{|h,k| h[k] = []}
presidentialList[:Washington] << "2/22/1732" << "2" << "Febuary"
presidentialList[:JAdams] << "10/30/1735" << "10" << "October"
presidentialList[:Jefferson] << "4/13/1743" << "4" << "April"
presidentialList[:Madison] << "3/16/1751" << "3" << "March"
presidentialList[:Monroe] << "4/28/1758" << "4" << "April"
presidentialList[:JQAdams] << "7/11/1767" << "7" << "August"
presidentialList[:Jackson] << "3/15/1767" << "7" << "March"
presidentialList[:VanBuren] << "12/5/1782" << "12" << "December"
presidentialList[:WHHarrison] << "2/9/1773" << "2" << "Febuary"
presidentialList[:Tyler] << "3/29/1790" << "3" << "March"

presidentialList.each do |key, array|
  array.each do |v|
    if v == "3"
      puts "#{key} => #{array}"
    end
  end
end