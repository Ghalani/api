class ErrorsController < ApplicationController
  def routing
    render json: {
      "errors":"No route matches [#{request.method}] #{request.path}"
      }, status: 404
  end
end
