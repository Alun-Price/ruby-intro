# frozen_string_literal: true

def test
  yield
end

test { puts "a block named test" }

# a block named test

def test2
  puts "I'm in the method"
  yield
  puts "I'm in the method again!"
  yield
end

test2 { puts "In the block!!!" }

# I'm in the method
# In the block!!!
# I'm in the method again!
# In the block!!!

# passing a parameter
def test3
  yield "This is a block parameter"
  yield 1
end

test3 { |a| puts "parameter: #{a}" }

# parameter: This is a block parameter
# parameter: 1

# passing more than one parameter
def test4
  yield 1, 100
end

test4 { |a, b| puts "p1: #{a}, p2: #{b}" }

# p1: 1, p2: 100

# BEGIN and END Blocks

BEGIN {
  puts "BEGIN Block"
}

at_exit do
  puts "END Block"
end

puts "main program"

# BEGIN Block
# main program
# END Block
