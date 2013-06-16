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
re = /[A-Z][a-z]+\s[A-Z][a-z]+/
name = ARGV.join(" ").match re
puts "Output: His name is: #{name}"
puts "========================================================================"
puts ""