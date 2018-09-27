class Api::V1::JokesController < ApplicationController

def index
  render json: Joke.all
end

def show
  render json: find_joke
end





private



def joke_params
   params.permit(:id, :joke)
 end

 def find_joke
   @joke = Joke.find(params[:id])
 end




end
