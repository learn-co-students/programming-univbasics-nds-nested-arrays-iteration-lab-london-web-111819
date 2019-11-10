def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  index_row = 0 
  love_ingredients = []
  while index_row < src.count do 
    love_ingredients << "I love #{src[index_row][0]} and #{src[index_row][1]} on my pizza"
    index_row += 1 
  end
  return love_ingredients
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  index_row = 0
  max_element = []
  while index_row < src.count do
    element_index = 0 
    while element_index < src[index_row].count do
    num = src[index_row][0]
      if src[index_row][element_index] > num 
        num = src[index_row][element_index]
      end
      element_index += 1
    end
    max_element << num
    index_row += 1
   end
  max_element
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  index_row = 0
  total = 0 
  while index_row < src.count do
    if src[index_row][0] % 2 == 0 && src[index_row][1] % 2 == 0
      total += src[index_row][0] + src[index_row][1]
    end
    index_row += 1 
  end
    total
end
