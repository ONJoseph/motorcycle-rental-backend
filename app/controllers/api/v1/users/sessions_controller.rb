class Api::V1::Users::SessionsController < ApplicationController
  def create
    user = User.find_by(name: session_params[:name])

    if user
      render json: { message: 'Signed in successfully', user: }, status: :ok
    else
      render json: { message: 'Sign in failed', is_success: false }, status: :unauthorized
    end
  end

  def destroy
    render json: { message: 'Signed out successfully' }, status: :ok
  end

  private

  def session_params
    params.require(:session).permit(:name)
  end
end
