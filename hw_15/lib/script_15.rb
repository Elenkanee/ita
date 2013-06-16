# ========================================================================
# Script 		=	__FILE__
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Your Name"
# Email 		=	"your@email.com"
# ========================================================================
puts ""
puts "========================================================================"
puts "Script: #{__FILE__}"
%x"ifconfig > subnet.txt"
subnet_mask = /[^(?:0x)]?([\da-fA-F]{8})/
# method match finds regex, but when finds the first one, it stops looking for another one
# scan - looking for all matches.

file = File.read("subnet.txt")
m = file.scan subnet_mask
a = m[1].to_s.gsub(/\[/,"").gsub(/"/,"").gsub(/\]/,"")
puts a.scan(/../).map {|i| i.to_i(16)}.join(".")
# to convert hexadecimal to decimal

puts "========================================================================"
puts ""