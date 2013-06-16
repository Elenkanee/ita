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
 
end.parse!

puts ""
puts "========================================================================"
puts "Script: #{__FILE__}"
puts "When I am dividing: #{$a} by #{$b} I am always have #{$a.to_i / $b.to_i}!"
puts "========================================================================"
puts ""
