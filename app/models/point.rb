# frozen_string_literal: true

class Point < ApplicationRecord
  belongs_to :flame_path, validate: true
end
