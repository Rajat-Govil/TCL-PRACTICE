#To find the length of a string without using 'string length' built-in function
set str1 "rajat"

set i 0

while {1} {
  if {[string index $str1 $i] != ""} {
    incr i
  } else {
    break
  }
}

puts "Length of given string \"$str1\": $i"
