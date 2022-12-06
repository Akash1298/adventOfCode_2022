input = File.read("input.txt");
lines = input.split("\n");

def all_between(a, lower, upper)
  a & ((lower+1)..(upper-1)).to_a
end

lines.map() do |line|
  key, value = line.split(',', 2)
  range_first, range_second = key.split('-', 2)
  range_array = all_between(arr, range_first.to_i, range_second.to_i)
  puts "#{range_array}"
  puts ""
end
