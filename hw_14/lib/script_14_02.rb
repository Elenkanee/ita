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
%x"ifconfig > ip4.txt"
ip4 = /\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}/

file = File.read("ip4.txt")
match = file.match ip4
puts $&

puts "========================================================================"
puts ""