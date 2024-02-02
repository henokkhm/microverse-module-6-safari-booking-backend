class SafarisController < ApplicationController
  before_action :set_safari, only: %i[show update destroy]

  # GET /safaris
  def index
    @safaris = Safari.all

    render json: @safaris
  end

  # GET /safaris/1
  def show
    render json: @safari
  end

  # POST /safaris
  def create
    @safari = Safari.new(safari_params)

    if @safari.save
      render json: @safari, status: :created, location: @safari
    else
      render json: @safari.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /safaris/1
  def update
    if @safari.update(safari_params)
      render json: @safari
    else
      render json: @safari.errors, status: :unprocessable_entity
    end
  end

  # DELETE /safaris/1
  def destroy
    @safari.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_safari
    @safari = Safari.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def safari_params
    params.require(:safari).permit(:name, :location, :description, :price, :img)
  end
end
