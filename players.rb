class Players
  attr_accessor :player1, :player2, :life1, :life2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @life1 = 3
    @life2 = 3
  end

end

# p = Players.new('Ahmed', 'Murad')
# puts p.player1
# puts p.player2
# puts p.life1