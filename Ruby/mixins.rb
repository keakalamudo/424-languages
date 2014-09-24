=begin
CECS 424
Lab 3
Name spaces and mixins

A Ruby module provides a namespace and a mixin facility. Write a Ruby
class that mixes in the built-in Comparable module.   Include an integer
attribute.  Implement the <=> method which returns -1, 0, or 1 depending
on whether the receive is less than, equal to, or greater than the other
object.  Implement this <=> method to compare based on the number of times
an integer is divisible by 2.  Thus 4 > 10 because 4 is divisible by 2
twice and 10 only once.  Show that you can compare objects of this class
using the usual <, >, etc. operators.  Do not use <=> in your test code.
If your class inherits from another class then the module mixin avoids the
problem of multiple inheritance.
=end

class Mixins
  include Comparable
  attr :int
  def <=>(anOther)
    divisible(int) <=> anOther.divisible(anOther.int)
  end
  def initialize(int)
    @int = int
  end
  def inspect
    @int
  end

  def divisible(n)
    count =0
    while(n%2==0)
        n = n/2
        count = count +1
    end
    return count
  end
end

s1 = Mixins.new(4)
s2 = Mixins.new(10)
s3 = Mixins.new(64)

print "Is s1 > s2: "
puts s1 > s2

print "Is s1 < s2: "
puts s1 < s2

print "Is s1 == s2: "
puts s1 == s2

print "Is s1 <= s2: "
puts s1 <= s2

print "Is s1 > s2: "
puts s1 > s2

print "Is s3 < s2: "
puts s3 < s2

print "Is s1 == s3: "
puts s1 == s3

print "Is s3 <= s2: "
puts s3 <= s2

print "Is s3 > s2: "
puts s3 > s2

print "Is s3 < s2: "
puts s3 < s2

print "Is s3 == s2: "
puts s3 == s2

print "Is s1 between s2 and s3: "
puts s1.between?(s2,s3)

print "Is s3 between s1 and s2: "
puts s3.between?(s1,s2)

print "Is s2 between s1 and s3: "
puts s2.between?(s1,s3)