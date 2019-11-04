def join_ingredients(src)
element = 0
  array = []
  while element < src.length do
    array.push("I love #{src[element][0]} and #{src[element][1]} on my pizza")
    element += 1
  end
array
end

def find_greater_pair(src)
  row = 0
  array = []
  while row < src.length do
    if src[row][0] > src[row][1]
      array.push(src[row][0])
    else
      array.push(src[row][1])
    end
      row += 1
  end
  array
end	


def total_even_pairs(src)
  row = 0
  total = 0
  while row < src.length do
    if src[row][0] % 2 == 0 && src[row][1] % 2 == 0
      total += src[row][0]
      total += src[row][1]
    end
    row += 1
  end
  total
end
