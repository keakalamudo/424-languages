def analyze(sys, usr)
  count1 = 0
  count2 = 0
  sys.zip(usr).each do |a, b|
    if a == b
      count1= count1+1
      a = 'x'
      b = 'y'
    end
  end
  print "In-place Counter: "
  print count1

  print "\nUnique Counter: "
  print count2

end

class Testing
  count = 0
  ok =  ['e','e','e','e']
  ok2 =  ['e','d','e','r']

  analyze(ok,ok2)
end
