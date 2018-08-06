class Game

  def initialize(p1_input, p2_input)
    @p1_input = p1_input
    @p2_input = p2_input
    @array = [@p1_input, @p2_input]
  end

  def outcome()
    return "Draw! Pick again!" if @array[0] == @array[1]
    return "Rock wins!" if @array.include?("rock") && @array.include?("scissors")
    return "Scissors wins!" if @array.include?("scissors") && @array.include?("paper")
    return "Paper wins!" if @array.include?("paper") && @array.include?("rock")
  end


end
