# ========================================================================
# Script 		=	__FILE__
# ========================================================================
# Description 	=	"This is a description of the script"
# Name 			=	"Your Name"
# Email 		=	"your@email.com"
# ========================================================================
require 'optparse'
require 'json'
OptionParser.new do |opts|
     opts.on("-i", "--input") do
              $file_name = ARGV[0]
     end
end.parse!
      json_file = File.read($file_name)
      element = JSON.parse(json_file)
               if RUBY_PLATFORM =~ /darwin/ then
        script_name = __FILE__.split("/").to_a.last
                else
        script_name = __FILE__
                end
puts "My favorite fruits are #{element [script_name]["fruit_a"] }s and #{ element[script_name]["fruit_b"] }s"