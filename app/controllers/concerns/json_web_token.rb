require 'jwt'
module JsonWebToken
  SECRET_KEY = Rails.application.secrets.secret_key_base. to_s
  # SECRET_KEY = Rails.application.secret_key_base

  def self.encode(payload, exp = 120.minutes.from_now)
    payload[:exp] = exp.to_i
    JWT.encode(payload, SECRET_KEY)
  end

  def self.decode(token)
    decoded = JWT.decode(token, SECRET_KEY)[0]
    HashWithIndifferentAccess.new decoded
  end
end