# ========================================================================
# Script 		=	__FILE__
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Your Name"
# Email 		=	"your@email.com"
# ========================================================================
require 'optparse'

OptionParser.new do |opts|
     opts.on("-i", "--input") do
              $file_name = ARGV[0]
     end
end.parse!
      lines = []
              file = File.open($file_name, "r")
              file.each_line do|line|
                        lines.push line
              end
a = lines[0].to_i
b = lines[1].to_i
c = a/b

puts  "When I am dividing #{a} by #{b} I am always have #{c}!"