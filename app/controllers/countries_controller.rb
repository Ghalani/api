class CountriesController < ApplicationController
  before_action :set_country, only: [:show]
  def index
    @country = Country.all
    render json: @country
  end

  def show
    render json: @country
  end

  private
  def set_country
    @country = Country.find(params[:id])
  end
end
