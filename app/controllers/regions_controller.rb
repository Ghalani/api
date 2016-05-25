class RegionsController < ApplicationController
  before_action :set_region, only: [:show, :update, :destroy]

  # GET /regions
  # GET /regions.json
  def index
    @regions = Organization.find(params[:organization_id]).regions

    render json: @regions
  end

  # GET /regions/1
  # GET /regions/1.json
  def show
    render json: @region
  end

  # POST /regions
  # POST /regions.json
  def create
    @region = Region.new(region_params)
    @region.organization_id = params[:organization_id]

    if @region.save
      render json: @region, status: :created
    else
      render json: @region.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /regions/1
  # PATCH/PUT /regions/1.json
  def update
    @region = Region.find(params[:id])

    if @region.update(region_params)
      head :no_content
    else
      render json: @region.errors, status: :unprocessable_entity
    end
  end

  # DELETE /regions/1
  # DELETE /regions/1.json
  def destroy
    @region.destroy

    head :no_content
  end

  private

    def set_region
      @region = Region.find(params[:id])
    end

    def region_params
      params.require(:region).permit(:country_id, :name, :state)
    end
end
