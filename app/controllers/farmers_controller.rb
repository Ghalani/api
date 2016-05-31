class FarmersController < ApplicationController
  before_action :set_farmer, only: [:show, :update, :destroy]

  def index
    manager = Manager.find_by_id(params[:manager_id])
    if manager
      @farmers = Farmer.all
      render json: @farmers
    else
      head :not_found
    end
  end

  def show
    render json: @farmer
  end

  def create
    @farmer = Farmer.new(farmer_params)
    @farmer.manager_id = params[:manager_id]
    if @farmer.save
      render json: @farmer, status: :created
    else
      render json: @farmer.errors, status: :unprocessable_entity
    end
  end

  def update
    @farmer = Farmer.find(params[:id])

    if @farmer.update(farmer_params)
      head :no_content
    else
      render json: @farmer.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @farmer.destroy

    head :no_content
  end

  private

    def set_farmer
      @farmer = Farmer.find(params[:id])
    end

    def farmer_params
      params.require(:farmer).permit(:farm_id, :fname, :lname, :phone)
    end
end
