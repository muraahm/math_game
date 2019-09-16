class Players
  attr_accessor :life1, :life2, :player1, :player2
  def initialize()
    puts "Enter player 1 name"
    @player1 = gets.chomp
    puts "Enter player 2 name"
    @player2 = gets.chomp
    @life1 = 3
    @life2 = 3
  end
end