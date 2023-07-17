require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <div>
    <a href=\"/rock\">Play Rock</a>
  </div>
  <div>
    <a href=\"/paper\">Play Paper</a>
  </div>
  <div>
    <a href=\"/scissors\">Play Scissors</a>
  </div>
  <div>
    <h1>Welcome to Rock-Paper-Scissors!</h1>
  </div>
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

get("/scissors") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_move = moves.sample

  if @comp_move == "rock"
    @outcome = "lost"
  elsif @compmove == "paper"
    @outcome = "won"
  else
    @outcome = "tie"
  end

  erb(:dolphin)
end
