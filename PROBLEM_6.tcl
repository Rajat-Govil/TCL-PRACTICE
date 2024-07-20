#COMPARE TWO STRINGS IF THEY ARE EQUAL WITHOUT USING 'string compare' BUILT-IN FUNCTION

set s1 "hello world!"
set s2 "hello world!"
set count 0
set i 0

puts "First string:\t$s1"
puts "Second string:\t$s2"

set len1 [string length $s1]
set len2 [string length $s2]

if {$len1 != $len2} {
  puts -nonewline ""
} else {
  while {1} {
    set ch1 [string index $s1 $i]
    set ch2 [string index $s2 $i]
    
    if {($ch1 == $ch2) && ($i < $len1)} {
      incr count
    } else {
      break
    }
    incr i
  }
}

if {$count == $len2} {
  puts "\nStrings are equal!"
} else {
  puts "\nStrings are different!"
}
