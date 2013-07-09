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
  
  opts.on("-f", "--forth") do
      $d = ARGV[0]
  end
 
end.parse!

puts ""
puts "========================================================================"
puts "Script: #{__FILE__}"
puts "My IP Address is: #{$a}.#{$b}.#{$c}.#{$d}"
puts "========================================================================"
puts ""
