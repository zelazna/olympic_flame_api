# frozen_string_literal: true

require 'jwt'

class JsonWebToken
  class << self
    # Encodes and signs JWT Payload with expiration
    def encode(payload)
      payload.reverse_merge!(meta)
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    # Decodes the JWT with the signed secret
    def decode(token)
      JWT.decode(token, Rails.application.secrets.secret_key_base)
    end

    def verify(token)
      result = decode(token)
      User.find_by_id(result.first['id'])
    rescue JWT::DecodeError, JWT::ExpiredSignature
      nil
    end

    private

    # Default options to be encoded in the token
    def meta
      {
        exp: 7.days.from_now.to_i
      }
    end
  end
end
