##
# http://adventofcode.com/day/2
require ('../shared')

def surface_area(s)
  area = s.map.with_index{|x,i| x*(i<s.length-1 ? s[i+1] : s[0])}
  2*area.reduce(:+) + area.min
end

puts read_input.split(/\n+/).inject(0) { |sum, package| sum += surface_area(package.chomp.split('x').map{|x| x.to_i})}