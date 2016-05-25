class DriversController < ApplicationController
  before_action :set_driver, only: [:show, :update, :destroy]

  # GET /drivers
  # GET /drivers.json
  def index
    manager = Manager.find_by_id(params[:manager_id])
    if manager
      @drivers = manager.drivers
      render json: @drivers
    end
  end

  # GET /drivers/1
  # GET /drivers/1.json
  def show
    render json: @driver
  end

  # POST /drivers
  # POST /drivers.json
  def create
    @driver = Driver.new(driver_params)
    @driver.manager_id = params[:manager_id]

    if @driver.save
      render json: @driver, status: :created
    else
      render json: @driver.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /drivers/1
  # PATCH/PUT /drivers/1.json
  def update
    @driver = Driver.find(params[:id])

    if @driver.update(driver_params)
      head :no_content
    else
      render json: @driver.errors, status: :unprocessable_entity
    end
  end

  # DELETE /drivers/1
  # DELETE /drivers/1.json
  def destroy
    @driver.destroy

    head :no_content
  end

  private

    def set_driver
      @driver = Driver.find(params[:id])
    end

    def driver_params
      params.require(:driver).permit(:fname, :lname, :phone, :country)
    end
end
