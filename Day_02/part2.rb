# Not done yet
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

played = {
  'A X' => 'Z',
  'A Y' => 'X',
  'A Z' => 'Y',
  'B X' => 'X',
  'B Y' => 'Y',
  'B Z' => 'Z',
  'C X' => 'Y',
  'C Y' => 'Z',
  'C Z' => 'X'
}

sum = 0
total = lines.map() do |line|
  opposite_player = line[0]
  mine = played[line]
  play = "#{opposite_player} #{mine}"
  sum = score[play] + sum;
end

puts sum