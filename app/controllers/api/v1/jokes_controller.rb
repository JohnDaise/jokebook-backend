class Api::V1::JokesController < ApplicationController

def index
  render json: Joke.all
end

def show
  render json: find_joke
end

def update
  @joke.update(joke_params)
  if @joke.save
    render json: @joke, status: :accepted
  else
    render json: { errors: @joke.errors.full_messages }, status: :unprocessible_entity
  end
end

def destroy
  render json: Joke.find(params[:id]).destroy
end





private



def joke_params
   params.permit(:id, :joke)
 end

 def find_joke
   @joke = Joke.find(params[:id])
 end




end
