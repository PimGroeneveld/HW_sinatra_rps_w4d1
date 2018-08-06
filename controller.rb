require("sinatra")
require("sinatra/contrib/all")
require("pry-byebug")

require_relative("models/game")
also_reload("./models/*")

get "/rps/:choice1/:choice2" do
  game = Game.new(params[:choice1], params[:choice2])
  @winner = game.outcome()
  erb(:result)
end

get "/" do   #for nav home directory
  erb(:rules)
end

get "/about_us" do   #for nav about us directory
  erb(:about_us)
end
