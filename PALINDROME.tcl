#Check whether the input string is a palindrome or not
set str "howo"
set revstr ""

puts "Original string: \t$str"

set revstr [string reverse $str]
puts "Reverse string: \t$revstr"

if {$str == $revstr} {
  puts "\n\"$str\" is a palindrome!"
} else {
  puts "\n\"$str\"is not a palindrome!"
}
