input = File.read("input.txt");
lines = input.split("\n");
score = {
  'A X' => 4,
  'B X' => 1,
  'C X' => 7,
  'A Y' => 8,
  'B Y' => 5,
  'C Y' => 2,
  'A Z' => 3,
  'B Z' => 9,
  'C Z' => 6
}

total = lines.map() do |line|
  score[line]
end

sum = 0
total.each do |a|
  sum = sum + a;
end
puts sum