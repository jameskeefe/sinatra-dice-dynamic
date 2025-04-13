require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_dice/:sides") do
  @nod = params[:number_of_dice].to_i
  @sides = params[:sides].to_i
  @rolls = []

  @nod.times do
    die = rand(1..@sides)

    @rolls.push(die)
  end

  erb(:flexible)
end
