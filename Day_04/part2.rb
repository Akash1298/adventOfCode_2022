input = File.read("input.txt");
lines = input.split("\n");

def all_between( lower, upper)
   ((lower)..(upper)).to_a
end

sum = 0
lines.map() do |line|
  first_pair, second_pair = line.split(',', 2)
  
  first_pair_start, first_pair_end = first_pair.split('-', 2)
  first_pair_array = all_between( first_pair_start.to_i, first_pair_end.to_i)

  second_pair_start, second_pair_end = second_pair.split('-', 2)
  second_pair_array = all_between( second_pair_start.to_i, second_pair_end.to_i)

  if first_pair_array.intersection(second_pair_array).length() > 0
    sum = sum + 1
  end
end

puts sum