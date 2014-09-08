=begin
CECS 424
Lab 2
Arrays, hash tables

Write a Ruby program to create a hash table of the first ten president's
birthdays where the key is the president's name and the value is the
president's birthday.  Search the internet for the data ( or use
http://www.infoplease.com/ipa/A0194030.html).   Write a method which will
return the array of president's names who were born in the month passed as
a parameter.
=end

class Presidential

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

  puts "Please enter the birth month of the President you are searching for:"
  usrInput = gets.chomp
  #print usrInput
  #puts presidentialList.key(usrInput)
  #puts presidentialList.fetch(:Washington)
  #Iterate through the Hash nad print out every match.

  presidentialList.each_value do |keys , val|
    if val == "3"
      puts "#{keys} => #{val}"
    end
  end

end