# ========================================================================
# Script 		=	__FILE__
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Your Name"
# Email 		=	"your@email.com"
# ========================================================================

require 'optparse'
require 'csv'
OptionParser.new do |opts|
     opts.on("-i", "--input") do
              $file_name = ARGV[0]
     end
     opts.on("-r", "--row") do
              $row_num = ARGV[0].to_i 1                                                          # first row is 0
     end
end.parse!
              csv_file = CSV.read($file_name)                                                      # csv_file[0][0]
puts "My favorite fruits are #{csv_file[$row_num][0]}s and #{csv_file[$row_num][1]}s"