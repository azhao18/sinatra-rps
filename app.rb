require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "tied"
  elsif @compmove == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:zebra)
end

get("/paper") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "won"
  elsif @compmove == "paper"
    @outcome = "tie"
  else
    @outcome = "lost"
  end

  erb(:giraffe)
end
