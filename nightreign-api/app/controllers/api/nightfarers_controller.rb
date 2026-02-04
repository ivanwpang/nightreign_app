class Api::NightfarersController < ApplicationController
  def index
    render json: Nightfarer
        .order(:name)
        .select(:id, :name, :dlc, :unlockable)
  end
end