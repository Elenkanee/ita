# ========================================================================
# Script 		=	__FILE__
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Your Name"
# Email 		=	"your@email.com"
# ========================================================================

require 'trollop'

sum =0
a = 0
b = 0
numbers = []

opts = Trollop::options do
    opt :first_number, "first_number", :short => "-a", :type => :int
    opt :second_number, "second_number", :short => "-b", :type => :int
    opt :third_number, "third_number", :short => "-c", :type => :int
    opt :fourth_number, "fourth_number", :short => "-d", :type => :int
    opt :fifth_number, "fifth_number", :short => "-e", :type => :int
    opt :sixth_number, "sixth_number", :short => "-f", :type => :int
    opt :seventh_number, "seventh_number", :short => "-g", :type => :int
    opt :eighth_number, "eighth_number", :short => "-h", :type => :int
    opt :ninth_number, "ninth_number", :short => "-i", :type => :int
    opt :tenth_number, "tenth_number", :short => "-j", :type => :int
end


puts "========================================================================"
puts "Script: #{__FILE__}"
opts.each_value do |num|
next if num == true or num == false or num == nil
numbers << num
end

  numbers.each do |num|
sum += num.to_f
end

summary = sum/numbers.length

#if digit after dot equal zero drop it
a,b = summary.to_s.split(".")
if b.to_i == 0 then summary = summary.to_i  end

puts "The summary of the following numbers #{numbers.join(",")} is: #{summary}"
puts "========================================================================"
puts ""