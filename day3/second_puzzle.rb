##
# http://adventofcode.com/day/3
require ('../shared')

ops = {'>' => lambda{|p| ops['do'][p,:x,1]}, '<' => lambda{|p| ops['do'][p,:x,-1]}, '^' => lambda{|p| ops['do'][p,:y,1]}, 'v' => lambda{|p| ops['do'][p,:y,-1]}, 'do' => lambda{|p, sym, i| {sym => p[sym]+i}} }

puts read_input.split("").each_with_object([{x: 0, y: 0}, {x: 0, y: 0}, {"0,0" => true}, 0]) { |char, obj| obj[obj[3]%2].merge!(ops[char][obj[obj[3]%2]]); obj[2]["#{obj[obj[3]%2][:x]},#{obj[obj[3]%2][:y]}"] = true; obj[3] += 1 }[2].length