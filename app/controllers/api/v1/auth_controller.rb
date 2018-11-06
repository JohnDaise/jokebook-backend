class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create # POST /api/v1/login
    @user = User.find_by(name: user_login_params[:name])

    if @user && @user.authenticate(user_login_params[:password])
      # create token
      # send it
      payload = { user_id: @user.id }
      token = encode_token(payload)
      render json: {
        success: true,
        token: token,
        user_info: {
          name: @user.name,
          bio: @user.bio
          }
        }, status: :ok
      # render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    else
      render json: { success: false, error: true, failed: true }
      # render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def user_login_params
    params.permit(:name, :password)
  end

end
