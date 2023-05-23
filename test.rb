def high_and_low(numbers)
  numbers.split.map(&:succ).minmax.reverse.join(' ')
end

numbers_1 = ""

p high_and_low(numbers_1)
