# frozen_string_literal: true

# radar
# madam
# racecar

# compare last char with first, remove them and continue

def is_palindrome_easy(word)
  word == word.reverse
end

def is_palindrome(word)
  if word.length <= 1
    true
  elsif word[0] != word[-1]
    false
  else
    is_palindrome(word[1, word.length - 2])
  end
end

puts "Palindrome Words"
print "Word: "
word = gets.chomp
puts "Is Palindrome: #{is_palindrome_easy(word)}"
