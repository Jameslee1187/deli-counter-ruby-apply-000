katz_deli = []

def take_a_number (katz_deli, name)
    katz_deli << name
    message = "Welcome, #{name}. You are number #{katz_deli.length} in line."
    puts message
end


$number = 1
def take_a_number(katz_deli)
  katz_deli << $number
  message = "Welcome! You're ticket number #{$number}"
  $number += 1
  puts message
end

# take_a_number(katz_deli) => "Welcome! You're ticket number #1" [1]
# take_a_number(katz_deli)=> "Welcome! You're ticket number #2" [1,2]

# now_serving(katz_deli)=> "Currently serving: #1" [2]
# now_serving(katz_deli) => "Currently serving: #2" []

# take_a_number(katz_deli) => "Welcome! You're ticket number #3" [3]




def line (katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    placement = "The line is currently:"
    katz_deli.each_with_index { |value,index| placement += " #{index.to_i + 1}. #{value}"}
  
puts placement
  end
end


def now_serving (katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end
end