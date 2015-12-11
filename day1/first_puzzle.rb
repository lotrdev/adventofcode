##
# http://adventofcode.com/day/1
require ('../shared')

directions = read_input

up = directions.count('(')
puts up - (directions.length - up)