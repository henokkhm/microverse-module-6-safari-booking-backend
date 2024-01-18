class HomesController < ApplicationController
  def index
    render json:{message:"Yeah! Setup successful"}
  end
end
