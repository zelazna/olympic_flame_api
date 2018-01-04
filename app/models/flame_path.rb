# frozen_string_literal: true

# The FlamePath handle the path of the olympic flame
# has related vote object
# @attr [String] name the name of the path
class FlamePath < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }
  has_one :torch
  has_many :points, dependent: :destroy
  has_many :events, dependent: :destroy
  # has_many :flame_path_votes, dependent: :destroy
end
