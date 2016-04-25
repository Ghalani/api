class ErrorsController < ApplicationController
  def routing
    render json: {
      "errors":"No route matches [#{request.method}] #{request.path}"
      }, status: 404
  end

  def unprocessable_entity
    render json: {
      errors: {
        message: @subscription.errors[:email]
      }
    }, status: :unprocessable_entity
  end
end
