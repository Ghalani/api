class FarmsController < ApplicationController
  before_action :set_farm, only: [:show, :update, :destroy]

  # GET /farms
  # GET /farms.json
  def index
    region = Region.find_by_id(params[:region_id])
    if region
      @farms = Farm.all
      render json: @farms
    else
      head :not_found
    end
  end

  # GET /farms/1
  # GET /farms/1.json
  def show
    render json: @farm
  end

  # POST /farms
  # POST /farms.json
  def create
    @farm = Farm.new(farm_params)
    @farm.region_id = params[:region_id]

    if @farm.save
      render json: @farm, status: :created
    else
      render json: @farm.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /farms/1
  # PATCH/PUT /farms/1.json
  def update
    @farm = Farm.find(params[:id])

    if @farm.update(farm_params)
      head :no_content
    else
      render json: @farm.errors, status: :unprocessable_entity
    end
  end

  # DELETE /farms/1
  # DELETE /farms/1.json
  def destroy
    @farm.destroy

    head :no_content
  end

  private

    def set_farm
      @farm = Farm.find(params[:id])
    end

    def farm_params
      params.require(:farm).permit(:region_id, :name, :area, coord:[])
    end
end
