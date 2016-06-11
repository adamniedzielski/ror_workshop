# each

result = []
[1, 23, 54, 30, 21, 18, 0].each do |number|
  if number.odd?
    result.push(number * 2)
  end
end

############################################

# map

["Adam", "Jack", "Bryan"].map do |name|
  "Hello #{name}!"
end

############################################

# select

["one", "two", "three", "four", "five", "six"].select do |number_string|
  number_string.length == 3
end

[1, 23, 54, 30, 21, 18, 0].select do |number|
  number.odd?
end.map do |number|
  number * 2
end

############################################

# reduce

[23, 43, 4, 67, 0, 1].reduce(0) do |accumulator, value|
  accumulator + value
end

############################################

# hash

{ "Adam" => 5, "Jack" => 2, "Bryan" => 7 }.select do |key, value|
  value > 4
end
