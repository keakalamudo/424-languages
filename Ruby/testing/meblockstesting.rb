def vowel(*argString)
  argString.each {|x|
    if x.scan(/[aeiou]/).count>=2
      puts x
    end}

end
=begin
def is_prime?(num)
  (2...num).each do |divisor|
    return false if num % divisor == 0
  end

  true
end

def primes(max)
  primes = []

  (2...max).each do |num|
    primes << num if is_prime?(num)
  end

  primes
end

=end
vowel('kell','watermelon', 'programming')
primes(36)
