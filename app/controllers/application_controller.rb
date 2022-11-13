class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  private

  def render_invalid(invalid)
    render json: {errors: invalid.record.errors.full_messages}, status:unprocessable_entity
    end

  def render_not_found
      render json: {error: "Not Found"}, status::not_found
  end 

  end