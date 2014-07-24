def luck_check luck

  integer = luck.split("").map { |number| number.to_i }
  # integer = number.map { |number| number.to_i }
  length = integer.length

  if (length % 2) != 0
    integer.slice!(((length - 1) / 2))
    print integer
  end

  half_num = length/2
  head = integer[0..(half_num-1)]
  tail = integer[half_num..-1]
  # p head
  # p tail
  total = ""

  if head.inject(:+) == tail.inject(:+)
    total << "true"
  else
    total << "false"
  end

p total
end

luck_check("14678")

