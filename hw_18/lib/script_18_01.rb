# ========================================================================
# Script 		=	__FILE__
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Your Name"
# Email 		=	"your@email.com"
# ========================================================================
require 'trollop'

opts = Trollop::options do
    opt :first, "first", :short => "-a", :type => :string
    opt :second, "second", :short => "-b", :type => :string
end

puts ""
puts "========================================================================"
puts "Script: #{__FILE__}"
puts "My favorite fruits are: #{ opts[:first]}s and #{ opts[:second]}s" 
puts "========================================================================"
puts ""
