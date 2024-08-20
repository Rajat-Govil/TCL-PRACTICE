#Write a program to truncate a string to a given length, additionally adding an ellipsis ("....") at the end
puts "Enter the string: "
gets stdin str

puts "Enter the length for truncated string: "
gets stdin len

puts "\nString entered is: $str"
puts "Length entered is: $len"

if {$len > [string length $str]} {
	puts "\nEntered length is greater than the string's length [string length $str]!!"
	puts "Truncating entire string...\n"
	set str [string replace $str 0 end "...."]
} else {
	puts "\nTruncating \"$str\" to length $len...\n"
	set str [string replace $str $len end "...."]
}

puts "New string after truncation is: $str\n\n"
