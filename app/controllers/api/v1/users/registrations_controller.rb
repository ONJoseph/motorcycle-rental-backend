class ApplicationController < ActionController::API
end

class Api::V1::Users::RegistrationsController < ApplicationController
  def create
    user = User.new(sign_up_params)

    if user.save
      render json: { user:, message: 'Signed up successfully', is_success: true }, status: :ok
    else
      render json: { message: 'Sign up failed', is_success: false }, status: :unprocessable_entity
    end
  end

  private

  def sign_up_params
    params.permit(:name)
  end
end
