require 'optparse'

sum =0
a = 0
b = 0
$numbers = []

OptionParser.new do |opts|

  opts.on("-a", "--first_number") do
     $numbers << ARGV[0]
  end

# "<<" means append to array
 
  opts.on("-b", "--second_number") do
         $numbers << ARGV[0]
  end

  opts.on("-c", "--third_number") do
         $numbers << ARGV[0]
  end

  opts.on("-d", "--fourth_number") do
         $numbers << ARGV[0]
  end

  opts.on("-e", "--fifth_number") do
         $numbers << ARGV[0]
  end

  opts.on("-f", "--sixth_number") do
     $numbers << ARGV[0]
  end

  opts.on("-g", "--seventh_number") do
         $numbers << ARGV[0]
  end

  opts.on("-h", "--eighth_number") do
         $numbers << ARGV[0]
  end

  opts.on("-i", "--ninth_number") do
         $numbers << ARGV[0]
  end

  opts.on("-j", "--tenth_number") do
         $numbers << ARGV[0]
  end


  end.parse!


$numbers.each do |num|
sum += num.to_f
end

summary = sum/$numbers.length

#if digit after dot equal zero drop it
a,b = summary.to_s.split(".")
if b.to_i == 0 then summary = summary.to_i  end

puts "The summary of the following numbers #{$numbers.join(",")} is: #{summary}"