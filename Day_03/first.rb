input = File.read("input.txt");
lines = input.split("\n");
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

def halves(str)
  [str[0, str.size/2], str[str.size/2..-1]]
end

sum = 0 
lines.map() do |line|
  first, second = halves(line)
  common = first.split('') & second.split('')
  common.each do |item|
    if item == item.capitalize 
      sum = score[item.downcase] + 26 + sum
    else
      sum = score[item.downcase] + sum
    end
  end
end

puts sum