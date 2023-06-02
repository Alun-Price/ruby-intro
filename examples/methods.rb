# frozen_string_literal: true

def hello
  puts "Hello"
end

hello # don't need () to call as no parameters

def hello_param(name)
  puts "Hello #{name}"
end

hello_param("Alun")

# In Ruby, last statement is always the return so don't need the the return keyword

def hello_message(name)
  message = "Hi there #{name}!!!!"
  # return message
end

puts hello_message("Jack") # Hi there Jack!!!!

def is_negative(num)
  if num < 0
    true
  else
    false
  end
end

puts is_negative(5) # false
puts is_negative(-10) # true

# get square of any given number
def square(num)
  num**2
end

puts square(8)

# Method Arguments

def printer(val)
  puts val
end

# printer # examples/methods.rb:44:in `printer': wrong number of arguments (given 0, expected 1)

printer("test") # test - works as correct number of arguments now!!

def person(name, age)
  puts "Name: #{name}"
  puts "Age: #{age}"
end

person("Jane", 23) # Name: Jane Age: 23 - works as expected
person(34, "Jack") # Name: 34 Age: Jack - not as expected

# parameters = variable in the method definition
# arguments = data you pass into the method's parameters when it's called

# parameters are positional
# we can use keywords to gain flexibility without having to think about the order

def person_keywords(name: "Jane", age: 30)
  puts "Name: #{name}"
  puts "Age: #{age}"
end

person_keywords(age: 28, name: "Jack")

# Name: Jack Age: 28 = correct order despite argument order

# Sometimes we may need to execute a method for more arguments than provided in the method definition
# Variable length arguments

def hello_args(*names)
  names.each { |name| puts name }
end

hello_args("Jane", "Jack", "Chandler", "Monica")

# Jane, Jack, Chandler, Monica

# we can use blocks - use & and must come last in param list
def test(&block)
  block.call
end

test { puts "a block" }

# a block

# LAMBDA FUNCTIONS
# anonymous function that's defined without a name
# single-line or multi-line
# use lambda keyword instead of def!!

puts lambda { |x| x * x }.call(8)
# 64
lambda { |x| puts x * x }.call(8)
# 64
puts ->(x) { x * x }.call(8)
# Proc instance - use .call(8) = 64

# assign the arrow function to a var and invoke it using the var
square = ->(x) { x * x }
puts square.call(8)
# 64

# lambda and do as keywords (multi-line)
square = lambda do |x|
  x * x
end

puts square.call(9)
# 81

# call in a method
def call_square(function, argument)
  function.call(argument)
end

puts call_square(square, 8)
# 64
