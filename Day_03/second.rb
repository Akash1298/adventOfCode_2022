input = File.read("input.txt")
lines = input.lines.map(&:strip).each_slice(3)

score = {
  'a' => 1,
  'b' => 2,
  'c' => 3,
  'd' => 4,
  'e' => 5,
  'f' => 6,
  'g' => 7,
  'h' => 8,
  'i' => 9,
  'j' => 10,
  'k' => 11,
  'l' => 12,
  'm' => 13,
  'n' => 14,
  'o' => 15,
  'p' => 16,
  'q' => 17,
  'r' => 18,
  's' => 19,
  't' => 20,
  'u' => 21,
  'v' => 22,
  'w' => 23,
  'x' => 24,
  'y' => 25,
  'z' => 26
}


sum = 0 
lines.map() do |line|
  common = line[0].split('') & line[1].split('') & line[2].split('')
  if common[0] == common[0].capitalize 
    sum = score[common[0].downcase] + 26 + sum
  else
    sum = score[common[0].downcase] + sum
  end
end

puts sum