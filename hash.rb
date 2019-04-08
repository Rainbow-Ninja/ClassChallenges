# # # name = ["nands", "alex"]
# # # numbers = ["95205555", "95302234"]

# # # #hash: key pair value pair
# # # phone_book = {"nands" => "95205555", "alex" => "95302234"}
# # # # puts phone_book
# # # # phone_book["Aidan"] = "2312132"
# # # # puts phone_book
# # # # phone_book["alex"] = "2122"
# # # # puts phone_book

# # # # hash methods
# # # # puts phone_book.keys #give me all the keys in the hash
# # # # puts phone_book.values #gives me all the values in the hash


# # # #
# # # # each_result = phone_book.each do |key, value|
# # # #     puts "the phonenumber of #{key} is #{value}"
# # # #     value = "+61" + value
# # # # end
# # # # puts "the each result is #{each_result}"

# # # map_result = phone_book.map do |key, value|
# # #     puts "the phonenumber of #{key} is #{value}"
# # #     value = "+61" + value
# # # end
# # # puts "the map result is #{map_result}"
# # # puts phone_book

# # grade = Hash.new
# # grade["Jo"] = 5
# # puts grade
# # grade["Matt"] = 3
# # puts grade
# # grade["Roh"] = 7
# # puts grade

# books         = {}
# books[:matz]  = "The Ruby Language"
# books[:black] = "The Well-Grounded Rubyist"
# puts books

# hash1 = {"jo" => 5, "alex" => 2, "ben" => 7}
# hash2 = {"jo" => 5, "ben" => 7, "alex" => 2}

# if hash1==hash2
#     puts "they are the same"
# else
#     puts "no go"    
# end

# h = {"colors"  => ["red", "blue", "green"],
#     "letters" => ["a", "b", "c" ]}
# puts h.assoc("letters")  #=> ["letters", ["a", "b", "c"]]
# #h.assoc("foo")      #=> nil

# h = { "jo" => 12, "a" => 100, "b" => 200, "c" => 300, "aa" => 99, "aardvark" => 203 }
# h.delete_if {|key, value| key <= "b" }   #=> {"a"=>100}
# puts h

# h = { "a" => 100, "b" => 200 }
# h.each_key {|key| puts value }

# a =  {1=> "one", 2 => [2,"two"], 3 => "three"}
# print a.flatten    # => [1, "one", 2, [2, "two", [1,2,3]], 3, "three"]
# puts ""
# print a.flatten(2)
# puts ""
# print a.flatten(1)
# puts ""
# print a.flatten(3) 
# puts ""

# h = { "n" => 100, "m" => 100, "y" => 300, "d" => 200, "a" => 0 }
# print h
# puts ""
# print h.invert   #=> {0=>"a", 100=>"m", 200=>"d", 300=>"y"}
#  puts ""

# h1 = { "a" => 100, "b" => 200 }
# h2 = { "b" => 254, "c" => 300 }
# h1.merge!(h2)
# puts h1

h = { "a" => 100, "b" => 200, "f" => 500 }
print h.replace({ "c" => 300, "d" => 400 })
puts ""