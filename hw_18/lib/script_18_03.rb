# ========================================================================
# Script 		=	__FILE__
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Your Name"
# Email 		=	"your@email.com"
# ========================================================================
require 'trollop'

opts = Trollop::options do
    opt :first, "first", :short => "-f", :type => :int
    opt :second, "second", :short => "-s", :type => :int
end

puts ""
puts "========================================================================"
puts "Script: #{__FILE__}"
puts "When I am dividing: #{ opts[:first]} by #{ opts[:second]} I am always have #{ opts[:first] / opts[:second]}!" 
puts "========================================================================"
puts ""

