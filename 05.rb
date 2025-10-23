#Building a Guessing Game 

 secret_word="Coding"
 guess=""
 guess_count=0
 guess_limit=3
 out_of_guesses=false
 guess_chance=3

while guess!=secret_word and !out_of_guesses and guess_check>0
  if guess_count<guess_limit
    puts "Enter guess in "+guess_chance.to_s+" chances: "
    guess=gets.chomp()
    guess_count+=1
    guess_chance-=1
  else
    out_of_guesses=true
  end
end

if out_of_guesses
  puts "\nYou Lose!"
else
  puts "\nYou Win!"
end
