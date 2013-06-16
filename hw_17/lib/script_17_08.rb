# ========================================================================
# Script 		=	__FILE__
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Your Name"
# Email 		=	"your@email.com"
# ========================================================================

require 'optparse'

OptionParser.new do |opts|
  
  opts.on("-s", "--sentence") do
     $sentence = ARGV
  end
  
  end.parse!

puts "========================================================================"
puts "Script: #{__FILE__}"
puts "Here are sorted (alphabetically) words: #{ARGV.sort.join(" ")}"
puts "========================================================================"
puts ""

