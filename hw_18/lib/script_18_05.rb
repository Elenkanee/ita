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
     opt :fifth, "second", :short => "-g", :type => :int
 end

puts ""
puts "========================================================================"
puts "Script: #{__FILE__}"
puts "Average score of (#{ opts[:first]}, #{ opts[:second]}, #{ opts[:third]}, #{ opts[:fourth]} and #{ opts[:fifth]}) is #{(opts[:first].to_f+opts[:second].to_f+opts[:third].to_f+opts[:fourth].to_f+opts[:fifth].to_f)/5}"
puts "========================================================================"
puts ""
