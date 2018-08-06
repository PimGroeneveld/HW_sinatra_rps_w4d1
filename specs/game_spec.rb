require("minitest/autorun")
require_relative ('../models/game')

class TestGame < Minitest::Test

  def setup
    @game = Game.new( "Rock", "Paper", "Scissors")
  end



end
