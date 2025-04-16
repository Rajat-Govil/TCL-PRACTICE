#Write a program to enter a string by the user and count the occurrence of each character in the string and display it in alphabetical order. 
#For example, say the input string is “rajat”. The output should be:
#	a: 2
#	j: 1
#	r: 1
#	t: 1

set str "rajat"
puts "String entered: $str\n"

#Find all the unique elements for comparison
set uniq_ele [split $str ""]
set uniq_ele [lsort -unique $uniq_ele]

foreach i $uniq_ele {
  set count 0
  for {set j 0} {$j <= [string length $str]} {incr j} {
    if {$i == [string index $str $j]} {
      incr count
    } else {
      puts -nonewline ""
    }
  }
  puts "Count of $i = $count"
}
