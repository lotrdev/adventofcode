##
# http://adventofcode.com/day/1
input = File.open('input.txt', 'rb')
directions = input.read
input.close

pos, floor = 0, 0
directions.scan(/(\(*)(\)*)/) do |x, y|
  pos, floor = pos + (x.length + y.length), floor + (x.length - y.length)
  
  abort("#{pos + floor + 1}") if floor < 0
end