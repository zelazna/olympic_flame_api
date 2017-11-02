# frozen_string_literal: true

# The FlamePath handle the path of the olympic flame
# has related poll object
# @attr [String] name the name of the path
class FlamePath < ApplicationRecord
  validates :name, uniqueness: { case_sensitive: false }
  has_many :polls, dependent: :destroy
end
