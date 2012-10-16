# Problem 3
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

factoringLimit = (number) ->
  Math.floor Math.sqrt number

largestPrimeFactor = (number) ->
  for smallFactor in [2..Math.floor(number / 2)]
    if number % smallFactor == 0
      largeFactor = number / smallFactor
      return largeFactor if isPrime largeFactor

isPrime = (number) ->
  for factor in [2..factoringLimit number]
    return false if number % factor == 0
  return true
  
console.log largestPrimeFactor 600851475143