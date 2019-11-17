def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  
  food_array = [
    ["Food 1","Food 2"],
    ["Food 3","Food 4"],
    ["Food 5","Food 6"],
    ["Food 7","Food 8"]
]


 food_statement = [
      ["I Love","and","On My First"],
      ["I hate","or","On My second"],
      ["I Like","no","On My third"],
      ["I wish","yes","On My Last"]
   ]




row_index = 0
while row_index < food_statement.count do
    puts food_statement[row_index][0] + " " + food_array[row_index][0] + " "+ food_statement[row_index][1] + " " + food_array[row_index][1] + " "+ food_statement[row_index][2] 
    row_index += 1
end
 new_array = []
  i = 0
  while i < src.length do 
    new_array.push("I love #{src[i][0]} and #{src[i][1]} on my pizza")
    i += 1
  end
  new_array

end


join_ingredients(2)


def find_greater_pair(src)
  new_array = []
  i = 0
  while i < src.length do
    new_array.push(src[i].max)
    i += 1
  end
  new_array

def total_even_pairs(src)
total = 0
  i = 0
  while i < src.length do
    if (src[i][0] % 2 == 0) && (src[i][1] % 2 == 0)
      total += (src[i][0] + src[i][1])
    end
    i += 1
  end
total
end
