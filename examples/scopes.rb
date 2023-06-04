# frozen_string_literal: true

a = 5 # we get an error unless the a var is defined outside the block first
3.times do
  a = 2
end

puts a

# 2 - as long as a is first defined outside of the block scope

a = 1

def test
  a = 5
  puts "a is a local variable"
end

test # "a is a local variable"
puts a # 1

# The Global Variable
# Begin with the $ sign

$a = 1
puts "$a is a global variable"

def test_global
  $a = 5 # this will update the global var
  puts "$a = #{$a}"
end

test_global
