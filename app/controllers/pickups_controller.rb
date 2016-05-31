class PickupsController < ApplicationController
  before_action :set_pickup, only: [:show, :update, :destroy]

  # GET /pickups
  # GET /pickups.json
  def index
    driver = Driver.find_by_id(params[:driver_id])
    if driver
      @pickups = driver.pickups
      render json: @pickups
    else
      head :not_found
    end
  end

  # GET /pickups/1
  # GET /pickups/1.json
  def show
    render json: @pickup
  end

  # POST /pickups
  # POST /pickups.json
  def create
    @pickup = Pickup.new(pickup_params)
    @pickup.driver_id = params[:driver_id]
    @pickup.manager_id = @pickup.driver.manager_id #Driver.find_by_id(params[:driver_id]).manager_id

    if @pickup.save
      render json: @pickup, status: :created
    else
      render json: @pickup.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pickups/1
  # PATCH/PUT /pickups/1.json
  def update
    @pickup = Pickup.find(params[:id])

    if @pickup.update(pickup_params)
      head :no_content
    else
      render json: @pickup.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pickups/1
  # DELETE /pickups/1.json
  def destroy
    @pickup.destroy

    head :no_content
  end

  private

    def set_pickup
      @pickup = Pickup.find(params[:id])
    end

    def pickup_params
      params.require(:pickup).permit(:title, :description, :start_date_time, :delivery_date_time)
    end
end
