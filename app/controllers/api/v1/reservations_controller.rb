class Api::V1::ReservationsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @reservation = @user.reservations.build(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @user = User.find(params[:user_id])
    @reservations = @user.reservations

    render json: @reservations
  end

  def destroy
    @user = User.find(params[:user_id])
    @reservation = @user.reservations.find(params[:id])
    @reservation.destroy

    head :no_content
  end

  def show
    @user = User.find(params[:user_id])
    @reservation = @user.reservations.find(params[:id])

    render json: @reservation
  end

  def update
    @user = User.find(params[:user_id])
    @reservation = @user.reservations.find(params[:id])

    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: { errors: @reservation.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:city, :start_date, :return_date, :vehicle_id)
  end
end