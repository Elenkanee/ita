# ========================================================================
# Script 		=	__FILE__
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Your Name"
# Email 		=	"your@email.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
 # OptionParser is a name of the class
 # new - instance, which is created based on the class OptionParser
 
  opts.on("-f", "--first") do
      $a = ARGV[0]
  end
 
  opts.on("-s", "--second") do
      $b = ARGV[0]
  end
  
  opts.on("-t", "--third") do
      $c = ARGV[0]
  end
  
  opts.on("-h", "--forth") do
      $d = ARGV[0]
  end
  
  opts.on("-e", "--fifth") do
      $e = ARGV[0]
  end
 
end.parse!

puts ""
puts "========================================================================"
puts "Script: #{__FILE__}"
puts "Average score of (#{$a}, #{$b}, #{$c}, #{$d} and #{$e}) is #{($a.to_f+$b.to_f+$c.to_f+$d.to_f+$e.to_f)/5}"
puts "========================================================================"
puts ""
