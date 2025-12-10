#Determine whether a given integer number is prime.
def prime?(n)
  return false if n <= 1
  (2..Math.sqrt(n)).each do |i|
    return false if n % i == 0
  end
  true
end
puts prime?(11)  # true
puts prime?(15)  # false    

#Determine the greatest common divisor of two positive integer numbers.
def gcd(a, b)
  while b != 0
    a, b = b, a % b
  end
  a
end
puts gcd(36, 63)  # 9
puts gcd(20, 8)   # 4  Alternative method direct method

#Determine the least common multiple of two positive integer numbers.
def lcm(a, b)
  (a * b) / gcd(a, b)
end
puts lcm(4, 5)  # 20
#aletnative method
puts (4.lcm 5)  # 20
puts 12.lcm 18  # 36

# #Calculate the Euler's totient function phi(m) (improved).
# def euler_totient(m)    
#   count = 0
#   (1..m).each do |i|
#     count += 1 if gcd(m, i) == 1
#   end
#   count
# end
# puts euler_totient(10)  # 4

#Determine the prime factors of a given positive integer.
def prime_factors(n)
  factors = []
  (2..n).each do |i|
    while n % i == 0
      factors << i
      n /= i
    end
    break if n == 1
  end
  factors
end
puts prime_factors(315)  # [3, 3, 5, 7]
#Alternative method


#A list of prime numbers.
def primes_up_to(n)
  primes = []
  (2..n).each do |i|
    primes << i if prime?(i)
  end
  primes
end
puts primes_up_to(20)  # [2, 3, 5, 7, 11, 13, 17, 19]
#Alernative method
require 'prime'
puts Prime.each(20).to_a  # [2, 3, 5, 7, 11, 13, 17, 19]

# #Goldbach's conjecture.
# def goldbach(n)
#   (2..n/2).each do |i|
#     if prime?(i) && prime?(n - i)
#       return [i, n - i]
#     end
#   end
#   nil
# end
# puts goldbach(28)  # [5, 23]