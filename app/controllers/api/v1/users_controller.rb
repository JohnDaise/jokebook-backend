class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :show]

  def profile
    render json: { user: UserSerializer.new(current_user), jokes: Joke.select { |x| x.user_id == 1 } }, status: :accepted
  end


  def index
    @users = User.all
    render json: @users
    # @user = User.find(params[:id])
    # render json: @user.find(user_params(:jokes))
  end

  def show
    render json: find_user
  end

  # Sign-Up
  def create
    # render json: User.create(user_params)
    @user = User.create(user_params)
    if @user.valid?
      payload = {user_id: @user.id}
      @token = encode_token(payload)
      render json: { user: UserSerializer.new(@user), token: @token }, status: :created
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  def update
    @user = User.find(user_params)
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def destroy
    render json: User.find(params[:id]).destroy
  end


  private

  def user_params
    params.permit(:name, :password, :bio)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
