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
    opt :third, "third", :short => "-t", :type => :int
    opt :fourth, "second", :short => "-h", :type => :int
end

puts ""
puts "========================================================================"
puts "Script: #{__FILE__}"
puts "My IP Address is: #{ opts[:first]}.#{ opts[:second]}.#{ opts[:third]}.#{ opts[:fourth]}"
puts "========================================================================"
puts ""
