# frozen_string_literal: true

# User class
class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: { case_sensitive: false }
end
