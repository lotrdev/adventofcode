##
# http://adventofcode.com/day/1
require ('../shared')

directions = read_input

pos, floor = 0, 0
directions.scan(/(\(*)(\)*)/) do |x, y|
  pos, floor = pos + (x.length + y.length), floor + (x.length - y.length)
  
  abort("#{pos + floor + 1}") if floor < 0
end