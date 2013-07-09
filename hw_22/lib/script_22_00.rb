
require 'optparse'
require 'csv'
OptionParser.new do |opts|
     opts.on("-i", "--input") do
              $file_name = ARGV[0]
     end
     
         opts.on("-r", "--row") do
             $row_num = ARGV[0] -1
         end
end.parse!

      lines = []
              csv_file = CSV.read($file_name)
              csv_file.each_line do|line|
                        lines.push line
              end
puts "My favotire fruits are #{csv_file[$row_num][0]} and #{csv_file[$row_nm][1]}"