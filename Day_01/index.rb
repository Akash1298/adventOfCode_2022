input = File.read("input.txt");

lines = input.split("\n\n");

newArr = lines.map do |line|
  sum = 0
  split = line.split
  split.map do |a|  
    int = a.to_i
    sum = sum + int
  end
  sum
end

puts "Total number of calories Elf carrying the most #{newArr.max}"
puts "Sum of top three Elves carrying the most Calories #{newArr.max(3).sum}"





