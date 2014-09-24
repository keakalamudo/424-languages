def test(max)
  primes = []
  (2..max).each do |num|
    true_prime = true
    (2..num).each do |div|
      true_prime = false if (num % div == 0)
    end
    primes << num if true_prime
  end
  print primes
end