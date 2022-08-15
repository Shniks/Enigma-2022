require './lib/enigma'
require 'time'

#Read command line
filename = ARGV.first
output = ARGV[1]
key = ARGV[2]
date = ARGV[3]

# Parse the message to be decrypted
cipher = File.read(filename).gsub("\n", "")

# Return the encrypted message, key used and date used
enigma =  Enigma.new.decrypt(cipher, key, date = Time.now.strftime("%d%m%y"))
# Write the encrypted message to a new file and print confirmation in Terminal
File.write("#{output}", enigma[:decryption])
puts "Created '#{output}' with the key #{enigma[:key]} and date #{enigma[:date]}"
