class ApplicationController < ActionController::API
  def not_found
    render json: { error: 'not_found' }
  end

  private

  def authenticate_request
    header = request.headers['Authorization']
    header = header.split.last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError
      render json: { errors: 'Please provide valid token' }, status: :unauthorized
    end
  end
end
