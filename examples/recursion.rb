# frozen_string_literal: true

# 5 + 4 + 3 + 2 + 1 + 0

def calculate(number)
  if number == 0
    0
  else
    number + calculate(number - 1)
  end
end

puts calculate(5) # 15
