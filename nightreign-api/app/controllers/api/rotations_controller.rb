class Api::RotationsController < ApplicationController
  def current
    rotation = Rotation.current.first

    if rotation.nil?
      render json: { effective_at: nil, everdark_bosses: [] }
      return
    end

    render json: {
      effective_at: rotation.effective_at,
      everdark_bosses: rotation.night_lords
        .order(:name)
        .select(:id, :name, :expedition, :dlc)
    }
  end
end