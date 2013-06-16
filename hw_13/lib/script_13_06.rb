# ========================================================================
# Script 		=	__FILE__
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Your Name"
# Email 		=	"your@email.com"
# ========================================================================


puts "========================================================================"
puts "Script: #{__FILE__}"
arg_sum = 0 
ARGV.each do|arg|
arg_sum = arg.to_f + arg_sum
end
num = ARGV.length
sum = arg_sum/num
puts "Output: The average score of the following numbers #{ARGV.join(",")} is: #{sum}"
puts "========================================================================"
puts ""