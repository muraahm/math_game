require './questions'
require './players'

class Game
  players = Players.new
    while players.life1 != 0 && players.life2 != 0 do
      questions = Questions.new
     puts "#{players.player1}: #{questions.question}"
      answer1 = gets.chomp
      if answer1.to_i != questions.answer then
        players.life1 -= 1
        puts "#{players.player1}: Seriously? No!"
        puts "P1: #{players.life1}/3 vs P2:#{players.life2}/3"
        questions = Questions.new
      elsif  answer1.to_i == questions.answer
        puts "#{players.player1}: Yes! You are correct."
        puts "P1: #{players.life1}/3 vs P2:#{players.life2}/3"
        questions = Questions.new
      end
      puts "---- NEW TURN ----"
      puts "#{players.player2}: #{questions.question}"
      answer2 = gets.chomp
      if answer2.to_i != questions.answer then
        players.life2 -= 1
        puts "#{players.player2}: Seriously? No!"
        puts "P1: #{players.life1}/3 vs P2:#{players.life2}/3"
        questions = Questions.new
      else 
        puts "#{players.player2}: Yes! You are correct."
        puts "P1: #{players.life1}/3 vs P2:#{players.life2}/3"
        questions = Questions.new
      end
      end
      if players.life1 == 0 then
        puts "#{players.player2} wins with a score of #{players.life2}/3"
        puts "---- GAME OVER ----"
        puts "Good bye!"
      elsif players.life2 == 0 then
        puts "#{players.player1} wins with a score of #{players.life1}/3"
        puts "---- GAME OVER ----"
        puts "Good bye!"
      else
      puts "---- NEW TURN ----"
    end
end