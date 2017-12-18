# frozen_string_literal: true

class Torch < ApplicationRecord
  belongs_to :flame_path, validate: true
end
