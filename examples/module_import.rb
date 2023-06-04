# frozen_string_literal: true

# require "examples/test_module.rb"
require_relative "test_module.rb"

puts ModuleA::MESSAGE
#  This is a module constant.
puts ModuleA.square(5)
# 25
