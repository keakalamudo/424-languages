=begin
CECS 424 Assignment 1

Write a Ruby program for the following. There are six possible letters a,
b, c, d, e, and f.  Input four letters for a pattern, and they may be
repeated, so they might be abcc or aadd, etc.  Then enter a test string of
four letters, say ddec. The computer returns two numbers, the number of
letters that exactly match the pattern chosen in advance, and the number
of letters that are in the pattern but that the user put in the wrong
position.  For example, if the pattern is abcc, some guesses and scores
are:
                 adef     1, 0
                 deaf     0, 1
                 cabb     0, 3
                 cccc     2, 0
                 acbc     2, 2

=end

def analyze(sys, usr)
  inPosCounter = 0
  uniqueCounter = 0
  sys.zip(usr).each do |a, b|
    if a ==b
      inPosCounter = inPosCounter+1
      a = 'x'
      b = 'y'
    end
  end

  print "\nIn-position Counter: "
  print inPosCounter

  print "\nUnique Counter: "
  print uniqueCounter

end

class Patterns

  sysPattern = ['a','b','c','d']
  usrPattern = []
  input = ""
  count = 0
  STDOUT.flush
  for i in 0..4
    puts "\nPlease enter the next set of 4 characters"
    usrPattern = gets.chomp.chars
    print "System Pattern: "
    print sysPattern
    #usrPattern[i] = input.split(//)
    analyze(sysPattern,usrPattern)
  end

end