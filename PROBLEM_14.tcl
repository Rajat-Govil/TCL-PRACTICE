#Find the length of a list without using 'llength' built-in command

set lst {r s t u v w x}
puts "The provided list is: \t{$lst}"

set len 0
set i 0

while {1} {
  if {[lindex $lst $i] == ""} {
    break
  } else {
    incr i
  }
}
puts "Length of list: \t$i"
