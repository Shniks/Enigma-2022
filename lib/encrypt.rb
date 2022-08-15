require './lib/enigma'

#Read command line
filename = ARGV.first
output = ARGV[1]

# Parse the message to be decrypted
message = File.read(filename).gsub("\n", "")

# Return the encrypted message, key used and date used
enigma =  Enigma.new.encrypt(message) # key will be random and date will be current date

# Write the encrypted message to a new file and print confirmation in Terminal
File.write("#{output}", enigma[:encryption])
puts "Created '#{output}' with the key #{enigma[:key]} and date #{enigma[:date]}"
