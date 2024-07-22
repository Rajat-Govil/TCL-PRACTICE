#You are given a list. Do the following operations on it:
# 1. Make the user enter an element and check if it is present in the list
# 2. If not present, print an error message.
# 3. If present, print the following:
#     a. List of indices where the element occurs
#     b. Number of times the element occurs
#     c. A list "newlst" with all the element occurrences changed to uppercase

set lst {m 8 a c r a 2 r}
puts "Original list: \t{$lst}"

gets stdin element
puts "Element entered: $element"


set i 0
set count 0
set indices {}
set newlst {}

while {1} {
set character [lindex $lst $i]
  if {$character == ""} {
    break
  } elseif {$character == $element} {
    lappend newlst [string toupper $character]
    lappend indices $i
    incr count
  } else {
    lappend newlst $character
  }
  incr i
}

if {$count == 0} {
  puts "\nElement entered is not present in the list!"
} else {
  puts "\nIndices where the element is present: $indices"
  puts "Number of element occurences: [llength $indices]"
  puts "\nNew list with all element occurences to uppercase:"
  puts "\t\t{$newlst}"
}
