class Game

  attr_reader :player1, :player2, :current_player

  def initialize (player1 , player2)
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

	def attack(player)
		player.got_attacked
    switch_turn
	end

  def switch_turn
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end
end
