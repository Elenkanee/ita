# ========================================================================
# Script 		=	__FILE__
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Your Name"
# Email 		=	"your@email.com"
# ========================================================================
require 'trollop'

opts = Trollop::options do

  opt :sentence, "sentence", :short => "-s", :type => :strings
end
    
  
puts "========================================================================"
puts "Script: #{__FILE__}"
re = /[A-Z][a-z]+\s[A-Z][a-z]+/
name = opts[:sentence].join(" ").match re
puts "Output: His name is: #{name}"
puts "========================================================================"
puts ""