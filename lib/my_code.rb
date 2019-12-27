# Your Code Here
def map(source_array)
  index = 0
  new_array = []
  while index < source_array.length do
    new_array[index] = yield(source_array[index])
    index += 1
  end
  new_array
end

def reduce(source_array, starting_point = nil)
  if starting_point
    total = starting_point
  else
    total = source_array[0]
  end
  index = 0
  while index < source_array.length do
    total = yield(total, source_array[index])
	  index += 1
  end
  total
end

puts "nil or nil = #{nil || nil}"
puts "False or true = #{false || true}"
puts "nil or true = #{nil || true}"