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
    puts "Player 1: #{question.question}"
    print "Enter Answer>"
    answer = gets.chomp.to_i
  if answer == question.answer
    puts 'Player 1: Boom Baby- Dats Correct!'
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      player = 2
      count +=1
    else
      player1.lives -=1
      puts 'Player 1: What a Fail! Thats Wrong!'
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      if player1.lives == 0
        break
      end
      player = 2
      count +=1
    end

  end

  if player == 2
    if count != 0
      puts '----- NEW TURN -----'
    end
question = Question.new
    puts "player 2: #{question.question}"
    print "Enter Answer>"
    answer = gets.chomp.to_i
    if answer == question.answer
      puts 'Player 2: Woot Woot Dats Correct.'
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      player = 1
      count +=1
    else
      player2.lives -=1
      puts 'Player 2: Now Whose Failing? Thats Wrong'
      puts "P1: #{player1.lives}/3 vs P2: #{player2.lives}/3"
      if player2.lives == 0
        break
      end
      player = 1
      count +=1
    end
  end
end


if (player1.lives == 0)
  puts "Player 2 wins with a score of #{player2.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Try Another Game! Good bye!'
end
if(player2.lives == 0)
  puts "Player 1 wins with a score of #{player1.lives}/3"
  puts '----- GAME OVER -----'
  puts 'Try Another Game! Good bye!'

end