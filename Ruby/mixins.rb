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