#REVERSE A STRING WITHOUT USING STRING REVERSE
set str "Standard Cells"
set revstr $str
puts "Original string:\t$revstr"


for {set i 0} {$i < [string length $str]} {incr i} {
  set charindex [expr [string length $str] - $i - 1]
  set revstr [string replace $revstr $charindex $charindex [string index $str $i]]
}
puts "Reversed string:\t$revstr"
