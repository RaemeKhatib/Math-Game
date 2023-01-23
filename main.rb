require "./player"
require "./question"


player1 = Player.new
player2 = Player.new

player = 1
count = 0

# Start off the game with Both players being alive and 1st player turn
until player1.lives == 0 && player2.lives == 0
  if player == 1
    if count !=0 
      puts '---------- NEW TURN ----------'
    end
    question = Question.new
    puts "Player 1: #{question}"
    print "Enter Answer>"
    answer = gets.chomp.to_i
  if answer == question.answer
    puts 'Player 1: YES! You are correct.'
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      player = 2
      count +=1
    else
      player1.lives -=1
      puts 'Player 1: Seriously? No!'
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      if player1.lives == 0
        break
      end
      player = 2
      count +=1
    end

  end
end