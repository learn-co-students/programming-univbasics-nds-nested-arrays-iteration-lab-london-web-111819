
require "pry"

def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
#   element = 0
# new_array = []
# new_array2 = []
# row_index = 0
#   while row_index < src.count do
#      new_array << src [row_index]
#      new_array2 << "I love #{new_array[0][0]} and #{new_array[0][1]} on my pizza"
#      new_array.delete_at(0)
#     row_index += 1
#     end
#   new_array2

element = 0
new_array = []
new_array2 = []
row_index = 0
  while row_index < src.count do
     new_array << src [row_index]
     new_array2 << "I love #{src[row_index][0]} and #{src[row_index][1]} on my pizza"
    row_index += 1
    end
  new_array2
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  array = []
  row = 0
  while row < src.count do
  array << src[row].max
  row += 1
  end
  array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
#   row = 0
#   ele = 0
#   total = []
#   # int1 = []
#   # int2 = []
#   while row < src.count do
#   # int1 = src[row][row]
#   # int2 = src[row][ele]
#   if (src [row % 2] == 0 ) && (src [ele += 1] % 2 == 0)
#   total << src [row]
#     # binding.pry
# end
#   # if src[row][ele]
#   #  total << src[row][row] + src[row][ele]
# row += 1
#   # ele +=
# end
#  total


total = 0
row = 0
while row < src.count do
  if ( src[row][0] % 2 == 0) && (src[row][1] % 2 == 0)
    total += (src [row][0] + src[row][1])
  end
  row += 1
end
total
end
