class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_response

  def render_invalid_response(invalid)
    render json: { message: invalid.record.errors.full_messages }, status: :unprocessable_entity
  end
end
