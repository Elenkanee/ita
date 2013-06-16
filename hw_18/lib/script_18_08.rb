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
puts "Here are sorted (alphabetically) words: #{opts[:sentence].sort.join(" ")}"
puts "========================================================================"
puts ""