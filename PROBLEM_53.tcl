#Given an input word string. Find the scrabble score by summing the value of its letters. The letters are valued as:
#Letters				Value
#A,E,I,O,U,L,N,R,S,T		 1
#D,G				             2
#B,C,M,P				         3
#F,H,V,W,Y			         4
#K					             5
#J,X					           8 
#Z,Q				             10
#Example: ‘RED’ is worth 4 points (R = 1, E = 1, D = 2)

set points    0

puts "Enter the word: "
gets stdin word
puts "Word entered: $word"

set lst [split $word ""]
 
foreach i $lst {

  switch -nocase -regexp $i {
    [aeioulnrst] {
      set points [incr points]
    }
    
    [dg] {
      set points [incr points +2]
    }
    
    [bcmp] {
      set points [incr points +3]
    }
    
    [fhvwy] {
      set points [incr points +4]
    }
    
    k {
      set points [incr points +5]
    }
    
    [jx] {
      set points [incr points +8]
    }
    
    [zq] {
      set points [incr points +10]
    }
  }
  
}

puts "\nScrabble score of $word: $points"
