def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  i=0 
  output_array=[]
  while src[i] do
    first = src[i][0]
    second =src[i][1]
    output_array[i] = "I love " + first + " and "+ second +" on my pizza"
    i=i+1 
  end
  puts output_array
  return output_array
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  i=0 
  output_array=[]
  while src[i] do
    output_array[i] = src[i].max
    i=i+1 
  end
  puts output_array
  return output_array
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  i=0 
  sum=0
  while src[i] do
    first = src[i][0]
    second =src[i][1]
    if (first %2 == 0) && (second %2 == 0)
      sum = first + second + sum
    end
    i=i+1 
  end
  puts sum
  return sum
end
test_array=[[1,2],[3,4],[6,8]]
#join_ingredients(test_array)
#find_greater_pair(test_array)
total_even_pairs(test_array)