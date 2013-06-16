files = /[a-z0-9]*\.(txt)/
list = []

%x'cd $HOME;ls -la > list.txt'


file = File.read("/Users/nee/list.txt")
file.scan(files){ |a|
list <<  a

# { } rabotaet vmesto "do" "end"
# << append to array
}

puts "Your home directory contains: #{list.size} files"