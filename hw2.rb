puts "The computer picked a random number. Try and guess it! "

# def string?
#   if user_input.to_i.to_s == user_input
#     puts "I said, enter a N-U-M-B-E-R"
# end

array = []

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

  if array.include?(guess)
    puts "Really dude? Why are you wasting guesses!"

  elsif guess == random
    puts "Just right. I like it."
    break

  elsif
    guess > random
    puts "Too high!"
    array << guess

  else guess < random
    puts "Too low!"
    array << guess
  end
end

if count == 5 && guess != random
  puts "Try again later, sucka!"
end
