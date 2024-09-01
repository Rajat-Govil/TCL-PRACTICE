#Create an associative array ‘contacts’ with names as keys and phone numbers as values. 
#Use regexp to find all contacts whose names start with "J" and print their phone numbers.

array set contacts {"Rajat" 12345 "Yash" 5678 "Jason" 35373 "Mihir" 94746 "janardhan" 902363 "Tim" 2355 "jack" 9474}

#Print the array with key-value pairs
puts "Array 'contacts' is : \n"
foreach i [array names contacts] {
  puts [format "%-15s%d" $i $contacts($i)]
}

puts "\n"

puts "Contact info of names starting with 'j':"
foreach i [array names contacts] {
  if {[regexp -nocase {^j} $i]} {
    puts [format "%-15s%d" $i $contacts($i)]
  } else {
    puts -nonewline ""
  }
}
