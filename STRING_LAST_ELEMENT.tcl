#A STRING IS GIVEN. FIND ITS LAST ELEMENT:
#1. USING 'string index'
#2. WITHOUT USING 'string index'

set str "RAJAT GOVIL"

puts "USING STRING INDEX:-"
set last_ele [string index $str end]
puts "Last element:\t$last_ele"

puts "\nWITHOUT USING STRING INDEX:-"
set len [string length $str]
puts "Last element:\t[string index $str [expr $len - 1]]"
