# frozen_string_literal: true

# Fibonacci Series
# 1, 1, 2, 3, 5, 8, 13, 21, 34, 55 ..

print "Enter a number: "
number = gets.chomp.to_i

# must start with 0 and 1
fibonacci_prev = 0
fibonacci = 1

while fibonacci <= number
  puts fibonacci
  # using parallel assignment
  fibonacci_prev, fibonacci = fibonacci, fibonacci + fibonacci_prev
end
