puts "The computer picked a random number. Try and guess it! "

# def string?
#   if user_input.to_i.to_s == user_input
#     puts "I said, enter a N-U-M-B-E-R"
# end

def user_input
  gets.chomp.to_i
end

def random_number
  array = (1..100).to_a
  array.sample
end

count = 0
random = random_number

while count <  5
  guess = user_input
  count +=1
  if guess == random
    puts "Just right. I like it."
    break
  elsif
    guess > random
    puts "Too high!"
  else guess < random
    puts "Too low!"
  end
end

if count == 5 && guess != random
  puts "Try again later, sucka!"
end
