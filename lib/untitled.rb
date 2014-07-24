def luck_check luck

  integer = luck.split("")
  # integer = number.map { |number| number.to_i }
  length = integer.length

  if (length % 2) != 0
    integer.slice!(((length - 1) / 2))
  end

  half_num = length/2
  head = integer[0..(half_num-1)]
  tail = integer[half_num..-1]

  total1 = 0
  head.each do |first|
    total += first.to_i
  end
  total2 = 0
  tail.each do |second|
    total += second.to_i
 end

  if total1 == total2
    true
  else
    false
  end

p total
end

luck_check("88988")
