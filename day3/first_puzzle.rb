##
# http://adventofcode.com/day/3
require ('../shared')

ops = {'>' => lambda{|p| ops['do'][p,:x,1]}, '<' => lambda{|p| ops['do'][p,:x,-1]}, '^' => lambda{|p| ops['do'][p,:y,1]}, 'v' => lambda{|p| ops['do'][p,:y,-1]}, 'do' => lambda{|p, sym, i| {sym => p[sym]+i}} }

puts read_input.split("").each_with_object([{x: 0, y: 0}, {"0,0" => true}]) { |char, obj| obj[0].merge!(ops[char][obj[0]]); obj[1]["#{obj[0][:x]},#{obj[0][:y]}"] = true }[1].length