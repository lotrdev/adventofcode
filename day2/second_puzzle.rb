##
# http://adventofcode.com/day/2
require ('../shared')

def ribbon_length(s)
  s.reduce(:*) + s.map.with_index{|x,i| 2*(x+(i<s.length-1 ? s[i+1] : s[0]))}.min
end

puts read_input.split(/\n+/).inject(0) { |sum, package| sum += ribbon_length(package.chomp.split('x').map{|x| x.to_i})}