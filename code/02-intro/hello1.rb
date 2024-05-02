def say_hello_goodbye(name)
  result = "I don't know why you say goodbye, #{name.upcase}, I say hello!"
  return result
end

puts say_hello_goodbye("Joe")
puts say_hello_goodbye("Paul")
puts "Hello and Goodbye to you, \nGeorge."