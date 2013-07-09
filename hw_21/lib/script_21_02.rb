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
 
  opts.on("-i", "--input") do
      $file_name = ARGV[0]
  end
end.parse!
    lines = []
      file = File.open($file_name, "r")
      file.each_line do|line|
          lines.push line
  end
 

puts ""
puts "========================================================================"
puts "Script: #{__FILE__}"
puts "My favorite fruits are: #{lines[0].chop.chop} and #{lines[1].chop.chop}" 
puts "========================================================================"
puts ""
