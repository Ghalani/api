class ManagersController < ApplicationController
  before_action :set_manager, only: [:show, :update, :destroy]

  # GET /managers
  # GET /managers.json
  def index
    @managers = Organization.find(params[:organization_id]).managers

    render json: @managers
  end

  # GET /managers/1
  # GET /managers/1.json
  def show
    render json: @manager
  end

  # POST /managers
  # POST /managers.json
  def create
    @manager = Manager.new(manager_params)
    @manager.organization_id = params[:organization_id]

    if @manager.save
      render json: @manager, status: :created
    else
      render json: @manager.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /managers/1
  # PATCH/PUT /managers/1.json
  def update
    #@manager = Manager.find_by_id(params[:id])

    if @manager.update(manager_params)
      head :no_content
    else
      render json: @manager.errors, status: :unprocessable_entity
    end
  end

  # DELETE /managers/1
  # DELETE /managers/1.json
  def destroy
    @manager.destroy

    head :no_content
  end

  private

    def set_manager
      @manager = Manager.find_by_id(params[:id])
    end

    def manager_params
      params.require(:manager).permit(:user_id, :region_id)
    end
end
