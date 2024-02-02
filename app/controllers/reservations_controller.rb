class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]
  before_action :set_user, only: [:index]
  before_action :authenticate_user!

  # GET /reservations
  def index
    @reservations = Reservation.accessible_by(current_ability)
    render json: set_user.reservations, include: %i[safari user], status: :ok
  end

  # GET /reservations/1
  def show
    authorize! :read, @reservation
    render json: @reservation, include: %i[safari user]
  end

  # POST /reservations
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reservations/1
  def destroy
    @reservation.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_user
    current_user
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:user_id, :safari_id, :bookingDate, :numberofPersons, :totalAmount)
  end
end
