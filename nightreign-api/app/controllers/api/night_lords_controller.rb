class Api::NightLordsController < ApplicationController
  def index
    render json: NightLord
      .order(:name)
      .select(:id, :name, :expedition, :dlc)
  end
end