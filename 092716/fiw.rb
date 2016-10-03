
  full = {
      1 => "one",2 => "two", 3 => "three",4 => "four",5 => "five", 6 => "six",7 => "seven",8 => "eight",9 => "nine",
      10 => "ten",11 => "eleven",12 => "twelve",13 => "thirteen",14 => "fourteen",15 => "fifteen",16 => "sixteen",
      17 => "seventeen",18 => "eighteen",19 => "nineteen",20 => "twenty", 21 =>"twenty one", 22 => "twenty two", 
      23 => "twenty three", 24 => "twenty four", 25 =>"twenty five", 26 => "twenty six",27 => "twenty seven", 
      28 => "twenty eight", 29 => "twenty nine",30 => "thirty", 31 => "thirty one", 32 => "thirty two", 
      33 => "thirty three",34 => "thirty four", 35 => "thirty five", 36 => "thirty six", 37 => "thirty seven", 
      38 => "thirty eight", 39 => "thirty nine", 40 => "forty",41 => "forty one", 42 => "forty two", 
      43 => "forty three", 44 => "forty four", 45 => "forty five", 46 => "forty six", 47 => "forty seven",
      48 => "forty eight", 49 => "forty nine", 50 => "fifty", 51 => "fifty one", 52 => "fifty two", 53 => "fifty three",
      54 => "fifty four",55 => "fifty five",56 => "fifty six", 57 => "fifty seven", 58 =>"fifty eight", 
      59 => "fifty nine", 60 => "sixty", 61 =>"sixty one", 62 => "sixty two", 63 => "sixty three",64 => "sixty four", 
      65 => "sixty five", 66 => "sixty six", 67 => "sixty seven", 68 => "sixty eight", 69 => "sixty nine", 70 => "seventy",
      71 => "sevnty one", 72 => "seventy two", 73 => "seventy three", 74 => "seventy four", 75 => "seventy five",
      76 => "seventy six", 77 => "seventy seven",78 => "seventy eight", 79 => "seventy nine", 80 => "eighty",
      81 => "eighty one", 82 => "eighty two", 83 => "eighty three", 84 => "eighty four",85 => "eighty five", 
      86 => "eighty six", 87 => "eighty seven", 88 => "eighty eight", 89 => "eighty nine", 90 => "ninety", 
      91 => "ninety one",92 => "ninety two", 93 => "ninety three", 94 => "ninety four", 95 => "ninety five", 
      96 => "ninety six", 97 => "ninety seven", 98 => "ninety eight",99 => "ninety nine",
      100 => "hundred",
      1000 => "thousand", 
      10000 => "ten thousand",
      1000000 => "million",
      1000000000 => "billion",
      1000000000000 => "trillion",
      "&" => "and",
      "$" => "only"
        }

puts "Your number here: "
type = gets.chomp.split("").map(&:to_i) #gets input from the user,converts it into an array and maps it to an integer
ary = [] #create an empty array
first2 = type.first(2).join.to_i #define the first two integers
last2 = type.last(2).join.to_i #define the last two integers

next1 = [type[1],type[2]].join.to_i #define two consecutive integers
next2 = [type[2],type[3]].join.to_i
next3 = [type[3],type[4]].join.to_i
next4 = [type[4],type[5]].join.to_i
next5 = [type[5],type[6]].join.to_i
next6 = [type[6], type[7]].join.to_i
next7 = [type[7],type[8]].join.to_i
next8 = [type[8],type[9]].join.to_i


if type.length == 1
 ary.push([full[type[0]], full["$"]].join(" "))

elsif type.length == 2
    ary.push([full[first2], full["$"]].join(" "))

elsif type.length == 3
    ary.push([full[type[0]],full[100], full["&"], full[last2], full["$"]].join(" "))  #first index, append 100 to it then add and

elsif type.length == 4
     ary.push([full[type[0]],full[1000], full[type[1]],full[100],full["&"],full[last2], full["$"]].join(" "))

elsif type.length == 5
      ary.push([full[first2],full[1000],full[type[2]],full[100],full["&"], full[last2], full["$"]].join(" "))

elsif type.length == 6
      ary.push([full[type[0]],full[100],full["&"],full[next1],full[1000],full[type[3]],full[100],full["&"],full[last2], full["$"]].join(" "))

elsif type.length == 7
  ary.push([full[type[0]],full[1000000],full[type[1]],full[100],full["&"],full[next1],full[1000],full[type[4]], full[100], full["&"], full[last2], full["$"]].join(" "))

elsif type.length == 8
  ary.push([full[first2], full[1000000],full[type[2]],full[100],full["&"],full[next3],full[1000], full[type[5]],full[100],full["&"],full[last2], full["$"]].join(" "))            

elsif type.length == 9
   ary.push([full[type[0]],full[100], full["&"], full[next1], full [1000000],full[type[3]],full[100],full["&"],full[next4],full[1000],full[type[6]], full[100], full["&"],full[last2], full["$"]].join(" "))

elsif type.length == 10
      ary.push([full[type[0]], full[1000000000], full[type[1]], full[100], full["&"], full[next2], full[1000000], full[type[4]], full[100], full["&"], full[next5], full[1000], full[type[7]], full[100],full["&"], full[last2], full["$"]].join(" "))

elsif type.length == 11
      ary.push([full[first2], full[1000000000], full[type[2]], full[100], full["&"], full[next3], full[1000000], full[type[5]], full[100], full["&"], full[next6], full[1000], full[type[8]], full[100], full["&"], full[last2], full["$"]].join(" "))

elsif type.length == 12
      ary.push([full[type[0]], full[100], full["&"], full[next1], full[1000000000], full[type[3]], full[100], full["&"], full[next4], full[1000000], full[type[6]], full[100], full["&"], full[next7], full[1000], full[type[9]], full[100], full["&"], full[last2], full["$"]].join(" "))     

elsif type.length == 13
ary.push([full[type[0]], full[1000000000000], full[type[1]], full[100], full["&"], full[next2], full[1000000000], full[type[4]], full[100], full["&"], full[next5], full[1000000], full[type[7]],full[100], full["&"], full[next8], full[1000], full[type[10]], full[100], full["&"], full[last2], full["$"]].join(" "))      
end 

puts ary




