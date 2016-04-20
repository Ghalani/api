class RootController < ApplicationController
  def index
    render json: {"message": "Welcome to our API home"}
  end
end
