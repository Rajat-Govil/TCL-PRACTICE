#You are given a string. Convert it to title case.
#For example: 
#   Say the string is "physical design automation"
#   The resultant string should be "Physical Design Automation"

set str "physical design automation"
puts "Original string: \t$str"

set i 0

set str [string toupper $str 0]

while {1} {
  if {[string index $str $i] == ""} {
    break
  } else {
    if {[string index $str $i] == " "} {
      set str [string toupper $str [expr $i + 1]]
    }
  }
  incr i
}

puts "String in title case: \t$str"
