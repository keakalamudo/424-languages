=begin
CECS 424
Lab 4
methods and blocks

Write a Ruby method with a variable number of arguments that returns an
array of all arguments which are strings containing at least two vowels.

Write a Ruby method to find the primes up to a parameter passed to it. Use
a block to display these values. The method creates an array of numbers
from two up to the parameter value.  While the first number in the array
is less than the square root of the parameter, it yields that first number
and removes all multiples of it from the array.  When the test is done all
remaining numbers are prime and must be yielded to the block so they will
be displayed..
=end
require 'prime'
display{ print parray }

#The vowel method accepts a variable number of arguments and returns an array of
#strings with multiple vowels.

def vowel(*argString)
  strArray = []
  argString.each {|x|if x.scan(/[aeiou]/).count>=2
      strArray << x
    end}
  print strArray
  puts
end

#The primes method utilizes a block and yield statement to display prime numbers from
#2 up to the parameter passed.
def primes(max)
  yield "See Primes below: "
  parray= []
  Prime.each(max) do |p|
    parray << p
  end
  print parray
end

vowel('Cat','Orange','Banana', 'Bat', 'Greece', 'Java', 'Study', 'Aardvak', 'Sweden')
primes(79){|i| puts i}
